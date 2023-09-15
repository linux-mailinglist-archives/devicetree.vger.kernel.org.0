Return-Path: <devicetree+bounces-375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC3F7A16AD
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 08:58:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D6F11C2129C
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 06:58:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82EE16ABF;
	Fri, 15 Sep 2023 06:58:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E02F846AD
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 06:58:51 +0000 (UTC)
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7732630D3
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 23:58:12 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-26fb8225268so1397908a91.1
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 23:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1694761092; x=1695365892; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1sgHfASFh3gAMSRsD4T8u/tQ4O/8NbFhdumsAYnmZ04=;
        b=bIp+5YOhz2psggbWwf7mCmDuraHxEbNW3jwSEn1x1V85sE1gV/OmZemqenlE4KIWtU
         TwCwn/H591IOtKew+8EKdOrBPQVsDfx2MQWQyVwaBF+nTCiYf4CBwSWG27v/nHF7euXm
         dGD+8h/r3rU8dqBVDxfVkJMikuC+OoZDvRWTG5znGUdS6gVjL1N5piZl3YuUAcPbKTJJ
         O4+N+A+SejwbYWwtyt0XmM9/xJYcsO3T47108eB5Wfp3hekN7ii2dO7PcEFzDp5loG1L
         lk3L7eyVprXQu8HckKfyukQd3hzUyn9/EbZHzRipsWQqcwZezYwhfSKrlkIbEjzhr9/I
         OEEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694761092; x=1695365892;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1sgHfASFh3gAMSRsD4T8u/tQ4O/8NbFhdumsAYnmZ04=;
        b=qo8TUj9+BZd6idnwnufhRcgqw2GAF8oQI0Mt8VOjldIc5MFrW6b57l73+CyTy1a0q+
         4/1HRbgT2JKwCp/YG9670Fcuzoen8sfFJ33Kzz7BWjVaTBHUMrS4fGcJn2CagZnc8FyB
         4Gk6GaGy3aI6Z8fQB8zS9NVZ39fodSSm98UqRrwsbAj/8tsa9cFUTXVN2v5ps3UMI/KQ
         yyjlTjije66wSmctvLH9vMvhH/n7g/z0/y4+60wCWc4K6ihseYMNn1RVWeUyTbDBzyvy
         Jo82euD9f9Xki3aje3fDvWQtO8Ee1QfZH+gi0r3XmA4Bi0AWxDtUakEY6WC6nUz/X+WC
         rQmQ==
X-Gm-Message-State: AOJu0Ywi13zmlrIqT/PK7A5pqwhSQGceq1ua/eEeWV5byco/r/By4hYN
	gOJJa1AlKNyhrkEnttOOuBZaRJE5Yul/QjW3R8S4jg==
X-Google-Smtp-Source: AGHT+IEXGX3qdnpoVEB63l/vmhNINtjvr5hIW4tkdfNIQMCuMg9uAsM2xQSTRv+vJwFnG4MdfPbX0nye1IfP5YTNyjM=
X-Received: by 2002:a17:90b:128a:b0:26b:698f:dda7 with SMTP id
 fw10-20020a17090b128a00b0026b698fdda7mr628681pjb.32.1694761091749; Thu, 14
 Sep 2023 23:58:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230913163905.480819-1-mchitale@ventanamicro.com>
In-Reply-To: <20230913163905.480819-1-mchitale@ventanamicro.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Fri, 15 Sep 2023 12:27:59 +0530
Message-ID: <CAK9=C2VF0Q=sZn48fhqOCY5jBq8OR-YyJOrh6AREsYhUnivcVA@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] Risc-V Kvm Smstateen
To: Mayuresh Chitale <mchitale@ventanamicro.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Anup Patel <anup@brainfault.org>, 
	Andrew Jones <ajones@ventanamicro.com>, Atish Patra <atishp@atishpatra.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org, 
	Conor Dooley <conor@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Sep 13, 2023 at 10:10=E2=80=AFPM Mayuresh Chitale
<mchitale@ventanamicro.com> wrote:
>
> This series adds support to detect the Smstateen extension for both, the
> host and the guest vcpu. It also adds senvcfg and sstateen0 to the ONE_RE=
G
> interface and the vcpu context save/restore.
>
> The motivation behind Smstateen from the spec
> (https://github.com/riscv/riscv-state-enable):
> "The implementation of optional RISC-V extensions has the potential to op=
en
> covert channels between separate user threads, or between separate guest =
OSes
> running under a hypervisor. The problem occurs when an extension adds pro=
cessor
> state---usually explicit registers, but possibly other forms of state---t=
hat
> the main OS or hypervisor is unaware of (and hence won=E2=80=99t context-=
switch) but
> that can be modified/written by one user thread or guest OS and perceived=
/
> examined/read by another."
>
> Changes in v5:
> - Rebased on latest linux master
>
> Changes in v4:
> - Update commit description for patch 1
> - Rebase to kvm_riscv_queue
> - Add reviewed-by tag
>
> Changes in v3:
> - Move DT bindings change to a separate patch
> - Move senvcfg/sstateen0 save/restore to separate function
>
> Changes in v2:
> - Add smstaeen description in riscv/extensions.yaml
> - Avoid line wrap at 80 chars
>
> Mayuresh Chitale (7):
>   RISC-V: Detect Smstateen extension
>   dt-bindings: riscv: Add smstateen entry
>   RISC-V: KVM: Add kvm_vcpu_config
>   RISC-V: KVM: Enable Smstateen accesses
>   RISCV: KVM: Add senvcfg context save/restore
>   RISCV: KVM: Add sstateen0 context save/restore
>   RISCV: KVM: Add sstateen0 to ONE_REG

Queued this series for Linux-6.7

Thanks,
Anup

>
>  .../devicetree/bindings/riscv/extensions.yaml |  6 ++
>  arch/riscv/include/asm/csr.h                  | 18 +++++
>  arch/riscv/include/asm/hwcap.h                |  1 +
>  arch/riscv/include/asm/kvm_host.h             | 18 +++++
>  arch/riscv/include/uapi/asm/kvm.h             | 10 +++
>  arch/riscv/kernel/cpufeature.c                |  1 +
>  arch/riscv/kvm/vcpu.c                         | 70 +++++++++++++++----
>  arch/riscv/kvm/vcpu_onereg.c                  | 41 +++++++++++
>  8 files changed, 152 insertions(+), 13 deletions(-)
>
> --
> 2.34.1
>
>
> --
> kvm-riscv mailing list
> kvm-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kvm-riscv

