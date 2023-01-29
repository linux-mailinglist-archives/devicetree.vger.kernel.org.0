Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E30B167FDAE
	for <lists+devicetree@lfdr.de>; Sun, 29 Jan 2023 09:44:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231373AbjA2Io1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Jan 2023 03:44:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230238AbjA2Io0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Jan 2023 03:44:26 -0500
X-Greylist: delayed 374 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 29 Jan 2023 00:44:25 PST
Received: from gofer.mess.org (gofer.mess.org [IPv6:2a02:8011:d000:212::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82B3B195
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 00:44:25 -0800 (PST)
Received: by gofer.mess.org (Postfix, from userid 1000)
        id BF820100065; Sun, 29 Jan 2023 08:38:06 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mess.org; s=2020;
        t=1674981486; bh=nFCgRLzt2RwhOcZeAYZUtkoppohSIfqzgQUjFWAep0I=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IVL6EWyl0UNgAEvxfgrwtF5P37oAUkXsipKUcmu6Oir9pbpCtXo4nE+NWp8uWZCXB
         BryOaQeQ7lrUJ5hOGSALefkVVzK6+Yq5lZr1ERxqe1h2pqWlgI0KM8vUQEL1nb+fIO
         x08q95u5bT1j/oloDKh5w/fBruj3byJEm4AOyVgciAwmrcC+7YsGEttoIGVmbx8hQB
         dm4zV5x7K0bbAEAqsda5GjlW13LhGwFAzq0kNJvt1VjUI1uvP03hvIrxEDdE1gDTH6
         SRBm41PmoGlI0wWVf1e3m5TH8GJgAzLiXK44SfcCNMWyIP4ZaJhcpevoYEwIBwhilB
         V7YyyG8fVgRqw==
Date:   Sun, 29 Jan 2023 08:38:06 +0000
From:   Sean Young <sean@mess.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Christian Hewitt <christianshewitt@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] media: rc: add keymap for Beelink Mini MXIII remote
Message-ID: <Y9YwbiJz9vOBejdL@gofer.mess.org>
References: <20230128034117.3983105-1-christianshewitt@gmail.com>
 <6e953652-4a24-6f3c-74e7-07c25fa1c6c1@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6e953652-4a24-6f3c-74e7-07c25fa1c6c1@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 28, 2023 at 11:11:32AM +0100, Krzysztof Kozlowski wrote:
> On 28/01/2023 04:41, Christian Hewitt wrote:
> > Add a keymap and bindings for the simple IR (NEC) remote used with
> > the Beelink Mini MXIII Android STB device.
> > 
> > Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> > ---
> >  .../devicetree/bindings/media/rc.yaml         |  1 +
> >  drivers/media/rc/keymaps/Makefile             |  1 +
> >  drivers/media/rc/keymaps/rc-beelink-mxiii.c   | 54 +++++++++++++++++++
> >  include/media/rc-map.h                        |  1 +
> >  4 files changed, 57 insertions(+)
> >  create mode 100644 drivers/media/rc/keymaps/rc-beelink-mxiii.c
> > 
> > diff --git a/Documentation/devicetree/bindings/media/rc.yaml b/Documentation/devicetree/bindings/media/rc.yaml
> > index 266f1d5cae51..f390a5d2c82d 100644
> > --- a/Documentation/devicetree/bindings/media/rc.yaml
> > +++ b/Documentation/devicetree/bindings/media/rc.yaml
> > @@ -39,6 +39,7 @@ properties:
> >        - rc-avertv-303
> >        - rc-azurewave-ad-tu700
> >        - rc-beelink-gs1
> > +      - rc-beelink-mxiii
> 
> Bindings are separate patches. Didn't you get such feedback already?

The only change for new keymaps is an added entry to the rc-map-name enum.
In the past, new keymaps have been accepted with that single line in the
same commit.


Sean
