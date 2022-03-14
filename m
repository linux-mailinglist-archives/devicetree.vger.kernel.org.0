Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 907DD4D8F92
	for <lists+devicetree@lfdr.de>; Mon, 14 Mar 2022 23:28:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238801AbiCNW3s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 18:29:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245625AbiCNW3r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 18:29:47 -0400
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA2BF1263F
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 15:28:35 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id j2so33867143ybu.0
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 15:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qWHNUqN4RPuJ+7vYjuCC+61GwajgQBbNJQM7LJ6cllQ=;
        b=mfx54VUND+tksYeR/vbtsuf8Rqw0eLgWGmJdnX62ExXLEOu9eKylDVL20CFBMls5nT
         1N7agP7N/TTm0WB5LYMTdDTccZVlrguzVQT1u5Q5OqAa/nxQfZFT1WPSX6VacnvvYc/B
         NLMnqVmITanUnR3Z2O2fhLb2ZrgeWrXBGE+guyqvKdaqmrQPWMStdEzwXkv5u1Rf5aXJ
         bdbxr7/wnGLNEXaM4llvK5Xzr9nGt4iQqYBEduQytHE3D3nDsgewItxoJvm6mwPOChRX
         BOGysxDi60RjHw5e3Bf5SbifZo0p+iW+AXk2ANZeRo6wr9V8URDVRgEVlBoxoWPSdlVN
         txCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qWHNUqN4RPuJ+7vYjuCC+61GwajgQBbNJQM7LJ6cllQ=;
        b=qDPNG+VSs1KLM8sf5uAusZ/KG+SWEbidfwv80s5jwIOZgUDs2qNpUwB3Ox8/caiMHn
         uXX5URiv21zpX/XRiaxDIgYtaSwzbhj0lj2+UlR6VveqRWN8j4UXCHZK6HuXM8t+gd56
         TWrvKLVEBGB1aP3jw1L4xGZFmRBVasW/k1bLCDlvEV+fbJN6b8ean0dsVHmwzx0ta3er
         7iDSrEPVsjcMHrOkBhn98vZt99+uXWcbwm8H6OnF9hGXRXEP6euETT8CNj5fHoy3pgR2
         DpJZhqBe44gXvbrE8wIUoiba33U5CiV4BGFZ0fXc8eFEDWZNdYABIGMge+FtknDUfpwK
         z34A==
X-Gm-Message-State: AOAM530IHXUWXE2krM6HC4F2ZTtH0KMXgZkYN3kC9JMCoHQJQSDV0ORx
        ZNVpNH1Zu9DSsx2TprmWTHdPoPKnomvioT1ciIK0lQ==
X-Google-Smtp-Source: ABdhPJxY3aPz3pg9iWcQ54O5HlHHzIhd94s/LV7H9QfgeLcD4LnfyG8oIiLntLd4kof5PBDBI0d0DPOnHZ+ud4Eb2No=
X-Received: by 2002:a25:f406:0:b0:628:c29b:5c39 with SMTP id
 q6-20020a25f406000000b00628c29b5c39mr20736120ybd.369.1647296914823; Mon, 14
 Mar 2022 15:28:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220312113853.63446-1-singh.kuldeep87k@gmail.com> <20220312113853.63446-5-singh.kuldeep87k@gmail.com>
In-Reply-To: <20220312113853.63446-5-singh.kuldeep87k@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 14 Mar 2022 23:28:23 +0100
Message-ID: <CACRpkdaVXMBu9DYca3NF_injHUZ3YWpdqVMNd_6toG-=ZkCkOw@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] ARM: dts: ste-dbx: Update spi clock-names property
To:     Kuldeep Singh <singh.kuldeep87k@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Mar 12, 2022 at 12:39 PM Kuldeep Singh
<singh.kuldeep87k@gmail.com> wrote:

> Now that spi pl022 binding only accept "sspclk" as clock name, ST
> ericsson platform with "SSPCLK" clock name start raising dtbs_check
> warnings. Make necessary changes to update this property in order to
> make it compliant with binding.
>
> clock-names:0: 'sspclk' was expected
>
> Signed-off-by: Kuldeep Singh <singh.kuldeep87k@gmail.com>
> ---
> v3:
> - Reword commit message

Patch applied to the ux500 tree!

Yours,
Linus Walleij
