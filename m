Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4D1F722452
	for <lists+devicetree@lfdr.de>; Mon,  5 Jun 2023 13:13:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229611AbjFELN6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 07:13:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229494AbjFELN4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 07:13:56 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9137C7
        for <devicetree@vger.kernel.org>; Mon,  5 Jun 2023 04:13:55 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9741a0fd134so786993666b.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jun 2023 04:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20221208.gappssmtp.com; s=20221208; t=1685963634; x=1688555634;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K2fyueQ0l+oTabpTScZ6PsdVGW5pIpNvub7b4vCL1Cs=;
        b=43hKx8e+my+uYxmXrA2VfYyN4RwiRXa+hCdbCW6S6FE3CvvP8ss4U91sb+PQ40LaqM
         nCN1Gt7DPO+nFmWJjlHB5aVaPHWZIHwDqBqanD60nSNyjvB5P1lIco/NPI596VJ9uQWx
         +3A+ZldZ4AZ8Ki16cn8tYvApxoMWHEOfxKQs67Q54igKlg2KaQA84z0roistCMocdMHR
         kD9aXMFLFJUNuUg8CAhYjMyO0ktaF6NyUB4rQG0eo9IkQi/1g9HNISCjslUIJ40FvUEj
         F/KqZI2C3x94Bw/pxQEBUkAE7i+Od54f3WdOgXN0iF4s51PWDxAAGgU4vuyV8l7in7C6
         mhmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685963634; x=1688555634;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K2fyueQ0l+oTabpTScZ6PsdVGW5pIpNvub7b4vCL1Cs=;
        b=itLnka3iBeKBRR/mxWrxHh98wSTBXXujxCPoeJm4Dg3cqJqfG64GJ/v9AXpn3xnZ1H
         QsBwbYhWPHhK4VoAYo9z2L8lGC/jFkzZKQphouaG7xyYLdoZSz7lXQHFxaham+1JW41T
         l/KYKR129jvM24/xuJja6iNGfONNlmKNutLvP+eYaQzQCtL9U2Gss869P5Ds/U7TmvLt
         CsvMdfj6ozBybMIzpHrbxHWtVW05E+ma7G7oOwP4Qs7N5/Joaz7I+i1u/0hGfDf6YH1U
         eGMm1i9p8hmMNeT2aDz8gQpPNsmPWjx3jZFZd/nQwq+9GL/2ax2Jm29gYIh2KhVCF6nW
         t2wg==
X-Gm-Message-State: AC+VfDxiUr5QDoPevTuBsRfwSI6qp24CLIGljv+OpRKrAiAekp3wC3wN
        4XFZWUXeYjJmba7NyiSDF32WFw5jcSGo1Aif4Loz2w==
X-Google-Smtp-Source: ACHHUZ7UJlGexo4gE7THiESQ0m/LGXxrE7FQ+Q1RbGQ5Z+IpkIxr0b+5mOk9aHGFcKKGvdj9kZlQH2z5URCGr/Baups=
X-Received: by 2002:a17:907:a423:b0:967:3963:dab8 with SMTP id
 sg35-20020a170907a42300b009673963dab8mr7057697ejc.7.1685963634265; Mon, 05
 Jun 2023 04:13:54 -0700 (PDT)
MIME-Version: 1.0
References: <9161f4e1d449edd86e642b6769575b8e201fccf0.1684244418.git.michal.simek@amd.com>
In-Reply-To: <9161f4e1d449edd86e642b6769575b8e201fccf0.1684244418.git.michal.simek@amd.com>
From:   Michal Simek <monstr@monstr.eu>
Date:   Mon, 5 Jun 2023 13:13:41 +0200
Message-ID: <CAHTX3dJZiPmtxzG_w5C_BDj3vqmO-SbfKwVkf9AriLjtzorSpw@mail.gmail.com>
Subject: Re: [PATCH] arm64: zynqmp: Convert kv260-revA overlay to ASCII text
To:     Michal Simek <michal.simek@amd.com>
Cc:     linux-kernel@vger.kernel.org, git@xilinx.com,
        Andrew Davis <afd@ti.com>, Conor Dooley <conor+dt@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

=C3=BAt 16. 5. 2023 v 15:40 odes=C3=ADlatel Michal Simek <michal.simek@amd.=
com> napsal:
>
> File was in UTF-8 format but there is no reason for it. Convert it to
> ASCII/plain text.
>
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---
>
>  arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dtso | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dtso b/arch/=
arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dtso
> index bd7628a50b04..bebbe955eec1 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dtso
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dtso
> @@ -5,9 +5,9 @@
>   * (C) Copyright 2020 - 2021, Xilinx, Inc.
>   *
>   * SD level shifter:
> - * "A" =E2=80=93 A01 board un-modified (NXP)
> - * "Y" =E2=80=93 A01 board modified with legacy interposer (Nexperia)
> - * "Z" =E2=80=93 A01 board modified with Diode interposer
> + * "A" - A01 board un-modified (NXP)
> + * "Y" - A01 board modified with legacy interposer (Nexperia)
> + * "Z" - A01 board modified with Diode interposer
>   *
>   * Michal Simek <michal.simek@xilinx.com>
>   */
> --
> 2.36.1
>

Applied.
M

--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs
