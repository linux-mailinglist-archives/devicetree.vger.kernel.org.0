Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44D3F79BA03
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 02:10:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234698AbjIKUws (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Sep 2023 16:52:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240096AbjIKOg2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Sep 2023 10:36:28 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id CEA0F193
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 07:36:23 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 62DEDD75;
        Mon, 11 Sep 2023 07:36:59 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F0B323F738;
        Mon, 11 Sep 2023 07:36:19 -0700 (PDT)
Date:   Mon, 11 Sep 2023 15:36:17 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Chen-Yu Tsai <wens@csie.org>
Cc:     Chris Morgan <macroalpha82@gmail.com>, linux-sunxi@lists.linux.dev,
        devicetree@vger.kernel.org, airlied@gmail.com, conor+dt@kernel.org,
        daniel@ffwll.ch, heiko@sntech.de, jagan@edgeble.ai,
        jernej.skrabec@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        mripard@kernel.org, neil.armstrong@linaro.org, noralf@tronnes.org,
        robh+dt@kernel.org, sam@ravnborg.org, samuel@sholland.org,
        uwu@icenowy.me, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V4 8/8] ARM: dts: sunxi: add support for Anbernic
 RG-Nano
Message-ID: <20230911153617.530ac42b@donnerap.manchester.arm.com>
In-Reply-To: <CAGb2v66qXS1Yn8fCd9kbgf9mrbpa8A4q=px+0jAX5Z567oYAsg@mail.gmail.com>
References: <20230828181941.1609894-1-macroalpha82@gmail.com>
        <20230828181941.1609894-9-macroalpha82@gmail.com>
        <20230911004909.6a40e1c0@slackpad.lan>
        <CAGb2v66qXS1Yn8fCd9kbgf9mrbpa8A4q=px+0jAX5Z567oYAsg@mail.gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 11 Sep 2023 21:35:19 +0800
Chen-Yu Tsai <wens@csie.org> wrote:

Hi Chen-Yu,

[...]

> > Regarding multiple RTCs: I didn't find anything which assigns a
> > priority level to multiple RTCs in the system. What you can do on the
> > userland side is to have a udev rule that links the PCF device to
> > /dev/rtc, so that most tools would use that as a time source.  
> 
> You can add DT aliases to override the numbering, thus making an external
> one rtc0 and the internal one rtc1. See
> arch/arm/boot/dts/allwinner/sun6i-a31-hummingbird.dts for such an example.

Ah, excellent, I somehow missed this. That should indeed solve that
problem.

Thanks for the heads up!
Andre
