Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D71C07430E8
	for <lists+devicetree@lfdr.de>; Fri, 30 Jun 2023 01:11:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231161AbjF2XLn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Jun 2023 19:11:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230487AbjF2XLk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Jun 2023 19:11:40 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BFE030F6
        for <devicetree@vger.kernel.org>; Thu, 29 Jun 2023 16:11:39 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2b69e6cce7dso19600491fa.2
        for <devicetree@vger.kernel.org>; Thu, 29 Jun 2023 16:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20221208.gappssmtp.com; s=20221208; t=1688080297; x=1690672297;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ouIIJPlckIJc9s2Ly4rKH2jNlWjaAkDeAVhQw+0U5tI=;
        b=m4m8CXI5kC9XyLaB3B93wRD//YHWodMtxl8KCaREWm2mLWWsOuW2lkGcxQb58OX/Z/
         Ad662wXUZPHwSQYS4o4BeqGrSKnLU0jAVe0i0Fo5db3KfKvNW+TvQ6XPT0oF8WzbFue+
         D6w0CTphRNULh071DYz+veN2UHVwygD1RslfbZSniNwqHugKQoMf+llv5QYqiC3uMdiZ
         Sr2xQughruiYIKC/i99TZhG0Y8OcRRBMQFKcxRZgWEqCywKswIbBlA/FYJHGF7IABDh9
         WScBt11ybJihu6wKpgYSUNXNvMF6E8kbQap6AYhqQSKFWSq5IlUGplv9GtbBeXP5apMB
         cEbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688080297; x=1690672297;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ouIIJPlckIJc9s2Ly4rKH2jNlWjaAkDeAVhQw+0U5tI=;
        b=Tnn4AdIcIrprMs07Hb3882tkbfsaOh/IZz9uVtcJrQ3E/lvB0x7O8aT4pNsFk1sCgg
         HzftrQIE+FI+NbB0On9vT4E9GDwXvCzSLBurWjEKVEzTmPrYRUuYOZUF4pqvgNXvrt3U
         cgLcpnkfD/xvd61WTWU4fbHv3/znqk0pj4J1dXB5FX+hlRurwyOeoWAIsEh+tong/71B
         d9jDtWs2X6m3GJhUNFK30ds+nOseNdfhJk2PFJ5f6zgx2i0laVZg/dF+WPhY8fmDE1v+
         4uQwMN6HaVDrg/sfOmxwb4VJHTvVFNM9SXtoq/Nldx2PojzaRPOJ6yLLYQJOszexpjnM
         jXbA==
X-Gm-Message-State: ABy/qLbl8oOTrIGTZWr41IQOdQWT56m3O4KgxCapPcTtXJFd3kPL5wuk
        EWSc/p7bKXBKQALGkR3rLlDKs/uZTLj3R8zOlcN4xg==
X-Google-Smtp-Source: APBJJlFPCnjLtVPVAgBt/mvIUDlRQlncLV2H4x3FcrZq3O2Nmv/iTODNm0bAvQbrqOeggFoTUGqALCq8sh+oIRyH6BE=
X-Received: by 2002:a05:6512:1094:b0:4f9:5a61:195c with SMTP id
 j20-20020a056512109400b004f95a61195cmr976866lfg.13.1688080297379; Thu, 29 Jun
 2023 16:11:37 -0700 (PDT)
MIME-Version: 1.0
References: <20230629-rebuttal-vagueness-a699deb7c7b3@wendy> <20230629-museum-playhouse-6dbe7e573f2c@wendy>
In-Reply-To: <20230629-museum-playhouse-6dbe7e573f2c@wendy>
From:   Evan Green <evan@rivosinc.com>
Date:   Thu, 29 Jun 2023 16:11:01 -0700
Message-ID: <CALs-Hsu5yA7eBPOFQkmd94GR+15wuFkbYbYSg4RubmkdQDyi8g@mail.gmail.com>
Subject: Re: [PATCH v2 03/10] RISC-V: shunt isa_ext_arr to cpufeature.c
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     palmer@dabbelt.com, conor@kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Andrew Jones <ajones@ventanamicro.com>,
        Heiko Stuebner <heiko.stuebner@vrull.eu>,
        Sunil V L <sunilvl@ventanamicro.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 29, 2023 at 1:30=E2=80=AFAM Conor Dooley <conor.dooley@microchi=
p.com> wrote:
>
> To facilitate using one struct to define extensions, rather than having
> several, shunt isa_ext_arr to cpufeature.c, where it will be used for
> probing extension presence also.
> As that scope of the array as widened, prefix it with riscv & drop the
> type from the variable name.
>
> Since the new array is const, print_isa() needs a wee bit of cleanup to
> avoid complaints about losing the const qualifier.
>
> Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: Evan Green <evan@rivosinc.com>
