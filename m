Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B85757430E5
	for <lists+devicetree@lfdr.de>; Fri, 30 Jun 2023 01:11:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230446AbjF2XL2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Jun 2023 19:11:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230345AbjF2XL1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Jun 2023 19:11:27 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D58CA30EC
        for <devicetree@vger.kernel.org>; Thu, 29 Jun 2023 16:11:25 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4f954d7309fso1543413e87.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jun 2023 16:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20221208.gappssmtp.com; s=20221208; t=1688080284; x=1690672284;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JKu76E7WcQ6JEkoMWbqzICZoGJiCZ/5zG7ZivKkv2PY=;
        b=z/ogiVgMw+ng4EM8Tb5Gmyjq2vlH7AsBq87THvi3aEBY0BVh2jDdrPXv9QwTN9zJ8X
         KeC8mHA0aYGM4LJ5YnLjUjcWunDy6LVIcGCuR1iJCRwAI8xoGI3ND030p/q0AnpEOx3d
         mZkRuTap3Ke6uQ+cBAnsB++1uKreHSAqud+A5qSpD4gLX5KEpYTVYeQY/v4WqW2lYln4
         +cGbJAv/LCelvlGB6luAyu/TT6LBiRWSDSLmDQqWpj+SHgU5YaXj9cQUY6DZY0CjcRNQ
         l6oBWj9B454JRE11rp7YrM3+SgD5GyYzs4FiJPCKN34RpZpoa4ycw8H5YVninP7pKbhk
         beXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688080284; x=1690672284;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JKu76E7WcQ6JEkoMWbqzICZoGJiCZ/5zG7ZivKkv2PY=;
        b=l5WJd6t9jL00QdLlt5+KvB47dUXMkvZvNOmm/5ZeL6rmf9ZMgkQl19/s2XzCfo897P
         7kbnxniuTed4GN+WBxXz+A2d/3SJXOsbMeRvE2uTUTsM6Rwfm9e7Lj/CsBSPZDe6TvQi
         X9ta4tTHnoIgQFiQnxvshuJ3rRW9OfGr7TFTDGUoSMNAGi5jdT+ZNXS1gYz8HL2FxYdB
         UyWqn64uz2DP6wiW7szQApO/FmTmQlGGtcqJcSvbDXOW53pCGmtXuvTsqfbG9wIRnnEK
         c1fo90oOfnonNB7uMwm3mwiSTSB25ei/r0P0EklTevZtWO67lrTiaJBm9CxT7EBn4pkX
         cfjQ==
X-Gm-Message-State: AC+VfDwmgW2xkvMm11Yc0IIfsXIJPHsu4wZ7J+KHTBNhUQ5KfooyocFj
        /pAWdhaUNcCpJeJQO5R9TGvylby0FENPKU5h8W2BgQ==
X-Google-Smtp-Source: ACHHUZ7n+73cSq6w39b5phHcFSgfR/+91iV3RuorlsfjFzts0A+c3W+Wv8vvXQHZoVeynzbbgrKFIdjPJnqy8lyNQ9Y=
X-Received: by 2002:a05:6512:2352:b0:4f4:b10f:d521 with SMTP id
 p18-20020a056512235200b004f4b10fd521mr1890759lfu.13.1688080284039; Thu, 29
 Jun 2023 16:11:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230629-rebuttal-vagueness-a699deb7c7b3@wendy> <20230629-fruit-syndrome-74e32af9c8ad@wendy>
In-Reply-To: <20230629-fruit-syndrome-74e32af9c8ad@wendy>
From:   Evan Green <evan@rivosinc.com>
Date:   Thu, 29 Jun 2023 16:10:48 -0700
Message-ID: <CALs-HstMTxJFHEoSCaAUtYzT+a-2RSYAhWMQmkVw2+WE=y0agQ@mail.gmail.com>
Subject: Re: [PATCH v2 01/10] RISC-V: don't parse dt/acpi isa string to get rv32/rv64
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

On Thu, Jun 29, 2023 at 1:29=E2=80=AFAM Conor Dooley <conor.dooley@microchi=
p.com> wrote:
>
> From: Heiko Stuebner <heiko.stuebner@vrull.eu>
>
> When filling hwcap the kernel already expects the isa string to start wit=
h
> rv32 if CONFIG_32BIT and rv64 if CONFIG_64BIT.
>
> So when recreating the runtime isa-string we can also just go the other w=
ay
> to get the correct starting point for it.
>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@vrull.eu>
> Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
> Co-developed-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> Changes in v2:
> - Delete the whole else & pull print_mmu() above it, since that's common
>   code now
> ---
>  arch/riscv/kernel/cpu.c | 21 +++++++++------------
>  1 file changed, 9 insertions(+), 12 deletions(-)
>
> diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
> index a2fc952318e9..2fb5e8e1df52 100644
> --- a/arch/riscv/kernel/cpu.c
> +++ b/arch/riscv/kernel/cpu.c
> @@ -253,13 +253,16 @@ static void print_isa_ext(struct seq_file *f)
>   */
>  static const char base_riscv_exts[13] =3D "imafdqcbkjpvh";
>
> -static void print_isa(struct seq_file *f, const char *isa)
> +static void print_isa(struct seq_file *f)
>  {
>         int i;
>
>         seq_puts(f, "isa\t\t: ");
> -       /* Print the rv[64/32] part */
> -       seq_write(f, isa, 4);
> +       if (IS_ENABLED(CONFIG_32BIT))
> +               seq_write(f, "rv32", 4);
> +       else
> +               seq_write(f, "rv64", 4);
> +
>         for (i =3D 0; i < sizeof(base_riscv_exts); i++) {
>                 if (__riscv_isa_extension_available(NULL, base_riscv_exts=
[i] - 'a'))
>                         /* Print only enabled the base ISA extensions */
> @@ -316,27 +319,21 @@ static int c_show(struct seq_file *m, void *v)
>         unsigned long cpu_id =3D (unsigned long)v - 1;
>         struct riscv_cpuinfo *ci =3D per_cpu_ptr(&riscv_cpuinfo, cpu_id);
>         struct device_node *node;
> -       const char *compat, *isa;
> +       const char *compat;
>
>         seq_printf(m, "processor\t: %lu\n", cpu_id);
>         seq_printf(m, "hart\t\t: %lu\n", cpuid_to_hartid_map(cpu_id));
> +       print_isa(m);
> +               print_mmu(m);

Did the indent get wonky here or am I just seeing it wrong because gmail?
Otherwise:

Reviewed-by: Evan Green <evan@rivosinc.com>

>
>         if (acpi_disabled) {
>                 node =3D of_get_cpu_node(cpu_id, NULL);
> -               if (!of_property_read_string(node, "riscv,isa", &isa))
> -                       print_isa(m, isa);
>
> -               print_mmu(m);
>                 if (!of_property_read_string(node, "compatible", &compat)=
 &&
>                     strcmp(compat, "riscv"))
>                         seq_printf(m, "uarch\t\t: %s\n", compat);
>
>                 of_node_put(node);
> -       } else {
> -               if (!acpi_get_riscv_isa(NULL, cpu_id, &isa))
> -                       print_isa(m, isa);
> -
> -               print_mmu(m);
>         }
>
>         seq_printf(m, "mvendorid\t: 0x%lx\n", ci->mvendorid);
> --
> 2.40.1
>
