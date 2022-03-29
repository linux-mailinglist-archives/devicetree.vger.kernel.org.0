Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C0664EB629
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 00:40:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238120AbiC2WmH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 18:42:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238115AbiC2WmH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 18:42:07 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E554232124
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 15:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=PxyNmMt5ONNYHyxLLGMyMlfMpM/UgYfSZnRTd62LJ8k=; b=fJfbS1Q5ksMU7mTDv9H7gbRg39
        3e6Gam9Q0DHoNix6X875cwTYyUHTis7WnqD0JOEqLfSESA/6lQnCOn6siiH6/Wr7N4q1c7nC6dP52
        kqG9Klk7opXMF3rhx+5nSgvWgjRIPxo/h+q9TE4YyvaB4iPjTUTkKc+f10PN27aK/SVI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1nZKVZ-00DEOT-Aa; Wed, 30 Mar 2022 00:40:13 +0200
Date:   Wed, 30 Mar 2022 00:40:13 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Rui Miguel Silva <rui.silva@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: net: smsc,lan91c111 convert to schema
Message-ID: <YkOKzeURVvotgAHq@lunn.ch>
References: <20220329213519.801033-1-rui.silva@linaro.org>
 <20220329213519.801033-2-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220329213519.801033-2-rui.silva@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 29, 2022 at 10:35:17PM +0100, Rui Miguel Silva wrote:
> Convert the smsc lan91c9x and lan91c1xx controller device tree
> bindings documentation to json-schema.
> 
> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> ---
>  .../bindings/net/smsc,lan91c111.yaml          | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/smsc,lan91c111.yaml

Hi Rui

It is normal to also remove the contents of the .txt file and add a
single line that points to the .yaml file.

       Andrew
