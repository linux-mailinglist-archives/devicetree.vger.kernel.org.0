Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0FB8622830
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 11:16:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230308AbiKIKQH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 05:16:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230302AbiKIKQH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 05:16:07 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90C251DA7D
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 02:16:03 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id n12so45272690eja.11
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 02:16:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pMdsq5H+6Eg0hvqJw3g6zxey1x9uU7yagkyLzIBH/F8=;
        b=Mf4BNQPHb+LkQAXlb/zm2rbrYtltLFna6nc2Es5lq8bJEJ7rDh5wWXb5VkkK3/kUYf
         JqZ44+Pi2/+t1XBglDDFxNwhZ0Fn2xsUhxjfWUXoRRSR2+zBg/bJ8kap//H+CajrVAni
         cbDNGfypzUF2W//Pc9OJEatkwT5vAGlVsIwXU34LesicaLUQRSeBms0HTcF3jVXeQgem
         d/g6eG09j0VdiIfCTn2N5473qcM76Av/rrpDT/SEt2hrd0qh41SGOIvqZQLILodXGr0Y
         /dFVhZLeGMPLJCE4WE/w0xlAufUt0Ltc1l4DVdWqp+ZIOV74v/ptSpG/vkSTfBiHxcGE
         OLIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pMdsq5H+6Eg0hvqJw3g6zxey1x9uU7yagkyLzIBH/F8=;
        b=QO6df6X05WMlUi3FGVgiwVWefVZdiIoruJBRmfeSGkkyBCucOd1W2lRwT63geoo2k+
         28Y0ktH0CGbviKJvNtDtbxgjsVo2I1Y7pjp/2fHEQ1bkqTcXOZ/PVzeckfX7owku7Qpn
         mCjnZns5ScYnm1GAbvEucNm+sW6CKIFVIxFwET3dfaNLfbYnq4nC21NQSgjCu7mTfZpx
         z28h+zi3/DVciKpNFf3SM071B/H77v+sn766ATCvibASiWC6Tx6kCdEF3Hr2mWxbSy+Y
         GE/uP1u13BzqM/ntMpqqhG0UehH+4OQshDSx4BOETD0vCNYtrMV1acIXLPJS8j1GLWTX
         0xgg==
X-Gm-Message-State: ANoB5plXqOGcefShqkr6OszIvk4JfX7sAtnQFc/DR8ndBIZMq8QQQtzY
        M4Zat1ElIBTTwjlXF/ARurDW/YvbhzpCP2jzB6a38GRH85Lgug==
X-Google-Smtp-Source: AA0mqf5TF33fQF20BTjL+3ietwm8wjDul9XW+jKaFBmLAPAOQ0xs+i8deVVZ1I0zgS5VF8Q1mxfrofhVMn/oYL/Vdak=
X-Received: by 2002:a17:906:6acc:b0:7ae:658c:ee45 with SMTP id
 q12-20020a1709066acc00b007ae658cee45mr14661004ejs.190.1667988962150; Wed, 09
 Nov 2022 02:16:02 -0800 (PST)
MIME-Version: 1.0
References: <20221104024835.3570-1-zhuyinbo@loongson.cn> <57c9f565-e75b-0c8f-fdce-9dc8c334d50f@loongson.cn>
In-Reply-To: <57c9f565-e75b-0c8f-fdce-9dc8c334d50f@loongson.cn>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 9 Nov 2022 11:15:50 +0100
Message-ID: <CACRpkda=-_a+gWQVk1vi4QJ30j-hzeraX-wr86RcQ9xne4-d6Q@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] soc: loongson: add GUTS driver for loongson-2 platforms
To:     Yinbo Zhu <zhuyinbo@loongson.cn>,
        Huacai Chen <chenhuacai@kernel.org>,
        WANG Xuerui <kernel@xen0n.name>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Hector Martin <marcan@marcan.st>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Conor Dooley <conor.dooley@microchip.com>,
        Hitomi Hasegawa <hasegawa-hitomi@fujitsu.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Brian Norris <briannorris@chromium.org>,
        Sven Peter <sven@svenpeter.dev>, loongarch@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        soc@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 9, 2022 at 11:03 AM Yinbo Zhu <zhuyinbo@loongson.cn> wrote:

> Hi maintainer,
>
> This patch I had verified that base on mainline 6.1-rc3 tree, it is
> okay, if no other issue, please you help me merge it to upstream.

Aren't these loongarch maintainers listed in MAINTAINERS able to
merge this? Certainly Huacai can merge stuff to drivers/soc as
need be. drivers/soc is a bit shared between different archs.

LOONGARCH
M:      Huacai Chen <chenhuacai@kernel.org>
R:      WANG Xuerui <kernel@xen0n.name>
L:      loongarch@lists.linux.dev
S:      Maintained
T:      git git://git.kernel.org/pub/scm/linux/kernel/git/chenhuacai/linux-loongson.git
F:      arch/loongarch/
F:      drivers/*/*loongarch*
F:      Documentation/loongarch/
F:      Documentation/translations/zh_CN/loongarch/

Yours,
Linus Walleij
