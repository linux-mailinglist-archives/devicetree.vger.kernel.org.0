Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5072D4FC51C
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 21:26:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349644AbiDKT2Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 15:28:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349645AbiDKT2X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 15:28:23 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 322C41D318
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 12:26:06 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id 32so12927012pgl.4
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 12:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/gBL667+SWj5tY9xLEiocp9O80FNT6kRGGYHN4TsPOU=;
        b=qzxskU2stBUkH1UmKvJdYBOHQltJmdlb8OvJdLEegtm154+mO20IcPGbWj6Qx8ZEOk
         rUCmse41yRP1Ob32cuBQ5wAaF3G2/uznzsfGi9a1gNklttoERbcf8KQstsI1SlWCOkgS
         cPttL5fRcfREDkTZaQzkpQquwtZmlnmTgd9HivDVOlgvG/ptLIfF6l6hGFv8F4f4lSVl
         LPkhLU28ePP2S34B0nleWpNy1afNKPMIxasJtk8jbHNpqEoJQEzqs51TmbN4Rj65JMCq
         uXcUx4haeAIt1b4OmjC6a6BpkxnwpBnjpVixAMLAYT7IxhzlArxbyOa8KB+HT0twc651
         /aLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/gBL667+SWj5tY9xLEiocp9O80FNT6kRGGYHN4TsPOU=;
        b=jH8Dx13h322hy3FSi+iENweIHIgES75U3BDja3SBiWJovdFU8TH4lTcAbUpG/D0LxO
         ep7yYasTuwcXl9KlK2RfpRq/a9q6N5Tb/BCwj6QveVm61mp3BZ8bmtVSlNZfjX8oUNVZ
         PZYVFo6MQFpUV4WATpC/BtEqXDbUYK+LePfcfyf11GJh7GoOymkBMoOk1924ELtrY4Py
         R67SwhkhAETxgLXmN7Hv7v2ANDEMOiFxss9gUX7wzUZg2cQEMXhfhjKUWI5859IAC/zK
         l3f9/XO9bS+GVDkEepiC2zn3TP/Vp+rg1jMywwotRAVJcUXCEucU+mF+rz83BXylz4lJ
         B/Gw==
X-Gm-Message-State: AOAM533/ixhSskhuy3My4Ofo7iQvcra2rwid5MCdUpjk8KKCC+ZL1PZ7
        vjKyLMS2AyM2He671Qac0CvaSi+xVGv9g/VP6/7wbw==
X-Google-Smtp-Source: ABdhPJxjOP6nmgR8IZ2XokMEOn0ZYTeJs0EWv7hDnIJ9LO1uIYY/WcF/kDzBU7BBZTogJtBhObv9f8VzvUEqtV8JWeo=
X-Received: by 2002:a05:6a00:1307:b0:4b0:b1c:6fd9 with SMTP id
 j7-20020a056a00130700b004b00b1c6fd9mr869117pfu.27.1649705165519; Mon, 11 Apr
 2022 12:26:05 -0700 (PDT)
MIME-Version: 1.0
References: <20220405200407.18698-1-tharvey@gateworks.com> <20220411012714.GC129381@dragon>
In-Reply-To: <20220411012714.GC129381@dragon>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Mon, 11 Apr 2022 12:25:53 -0700
Message-ID: <CAJ+vNU151J42NSeqGrk7mG+k6Nk+=vPrSBGREFd725E2YaZ=JQ@mail.gmail.com>
Subject: Re: [PATCH] imx8mm-venice-gw7901: move UART gpio config into hog group
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Apr 10, 2022 at 6:27 PM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Tue, Apr 05, 2022 at 01:04:07PM -0700, Tim Harvey wrote:
> > Move UART related GPIO into hog group so that they still are pinmuxed
> > even if the uart driver is not probed.
>
> What are these GPIOs used for?  So they will be used anyway even when
> UART support is disabled?
>
> Shawn

Shawn,

Agreed - please drop this and 'imx8mm-venice-gw7902: move UART gpio
config into hog group' [1]

Best Regards,

Tim
[1] https://patchwork.kernel.org/project/linux-arm-kernel/patch/20220405200435.18797-1-tharvey@gateworks.com/
