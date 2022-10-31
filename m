Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87720613DCE
	for <lists+devicetree@lfdr.de>; Mon, 31 Oct 2022 19:53:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbiJaSxi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Oct 2022 14:53:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbiJaSxg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Oct 2022 14:53:36 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB982B7C
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 11:53:34 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id i21so18776106edj.10
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 11:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QACducWlMlbzCdePrSlRLyK9NrtcTzq7pPXSQmyzsc4=;
        b=A5jfwdoKRHPXewxn/OSvkJ8ssRO7Wbd99CFv6gbIwme9W8aiJ7kDw5+PSSHgv8hkgC
         xIYk+XIlgXWvKrah1nWU7znHmjs8qlOVx5tuXJpQvlFWWQE76v/ITpRPxXZIE5znCiAC
         cNtnWazScG8iOJDT2P2ZXdrLoeHRUFfAT32KMEEGfjfWonxapwErJc0VQJ10hJx3dRoP
         oeszvw6yLzRm+z0twp1icSUEyaeOK6brYCZ9QOvthZvmNU66690fxQ5cwt0vBfYBvTnT
         VZaT/KLy8/P3DaTYZAWp6Zrf2L/EH5IhfUTF6WRW8J1cboV5zCLmPriGyE4MBACkRBPY
         ozKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QACducWlMlbzCdePrSlRLyK9NrtcTzq7pPXSQmyzsc4=;
        b=ZrQ+zlSTS4qB3Jy6bn9v/dcH1v6h+zfpQ9LEMJggiMvXpC5srlTkUICFeg5o1papHA
         nlME1jm5xQvTttay2B25Sy2QmzS8Go94iQjHiX4RMlhToRLHOA0xaNXXtDRrBjZmkPKR
         zAzxDlMdG1HmumYTNmTQTJBckUPPBtE56AtjgfPIr1yNNQEDTbfILTNxYjgtOePgfTrt
         6fqOqr0YgDYx0Yts4Jg8Id1wgab0DZyLQX8o1i+xcYm5zdaRiiXvNpr9HKWPDe8MUuQk
         5UmD2RTbZD1NJtM77Ydo4z9ASMBn+Zwh99uWrGT/CsHSaZDA8uQTki3ezIQz/INlklTX
         pYNw==
X-Gm-Message-State: ACrzQf1f5n650FTvyBVtZm2d5OqhYMD6cssNOFN8D76n+mHfDdSFhbe/
        oSSP3LgEE4mtdqZ5ge5PeFyaX/rBuPnzm9E+8Qfgbg==
X-Google-Smtp-Source: AMsMyM7simzzfbatyJLDxJOpHY4k5W/UsgQ2K6UUPmKHb2C0vIXck7Sv+4AmKRZNwbnVbLcBcZ40BQnutrmPCQKPFMA=
X-Received: by 2002:aa7:c718:0:b0:462:ff35:95dc with SMTP id
 i24-20020aa7c718000000b00462ff3595dcmr13872055edq.32.1667242413360; Mon, 31
 Oct 2022 11:53:33 -0700 (PDT)
MIME-Version: 1.0
References: <20221019193449.3036010-1-linus.walleij@linaro.org>
In-Reply-To: <20221019193449.3036010-1-linus.walleij@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 31 Oct 2022 19:53:21 +0100
Message-ID: <CACRpkdboSn=OaOwJ_PA1Cio41ORhUmrS1kupFxub-SgJyFw=Sw@mail.gmail.com>
Subject: Re: [PATCH 1/2 v3] dt-bindings: ARM: add bindings for the D-Link DWL-8610AP
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 19, 2022 at 9:36 PM Linus Walleij <linus.walleij@linaro.org> wrote:

> The D-Link DWL-8610AP is a pure access point with ethernet in
> and wireless (both 2.4GHz and 5GHz) out.
>
> Cc: devicetree@vger.kernel.org
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v1->v3:
> - Collect Rob's ACK
> - Resend with the main DTS patch

Are these fine to go in?

Yours,
Linus Walleij
