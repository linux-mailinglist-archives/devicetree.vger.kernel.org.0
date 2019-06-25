Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 372035283D
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2019 11:39:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731646AbfFYJjb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jun 2019 05:39:31 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:33783 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728860AbfFYJjb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jun 2019 05:39:31 -0400
Received: by mail-pg1-f194.google.com with SMTP id m4so8077399pgk.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2019 02:39:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=hRi4ajiGUFKeMzAjuhkh1DNYz0dIJRV7lfjpx0rM/iM=;
        b=odIajRsY6r2NF54OaBwCB+BsUDXSO9DNsNYRhMW0jMWkx7YmG/7/b6e5621mDDn68O
         9xuQYj06n2U48X2fKiXLenv5Xis1YXbh7VoIqOSCEXch4/XJE5y3+x9+XSgN4vGgNPKD
         7JzIMo8CmJj5GBV79ownYDFfSM2riIJIKZfQSP6DMidlRkeV9knBr7uMy5KUF0j+m/IW
         vGhK06KzDMPbw2A0wwJrn2L6HeE+RaM6BHMMYUop9hDkSWfOlSOcpsp2DStpZ/eFK/SJ
         cksa/X0T4zFrJ+Vum7GU2m07qF16/BzIxxYXyvbftcyf8+JnMzigaJxqOKECSWlE47wU
         oPKw==
X-Gm-Message-State: APjAAAUGU73CHdyDI584ZjwWWQDXSnlJCBlyJF76F2xk2ghggJD5oI8Q
        J1sK+1raVnP8fDYFCM4U+HoO8A==
X-Google-Smtp-Source: APXvYqybMotW0khjdQiV50T7VJy2vvzENYimZUiiJRHH4JCUBgizc2REGnBc7XVUCjvIwL26rpXvHg==
X-Received: by 2002:a17:90a:bb94:: with SMTP id v20mr31266695pjr.88.1561455570111;
        Tue, 25 Jun 2019 02:39:30 -0700 (PDT)
Received: from localhost (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
        by smtp.gmail.com with ESMTPSA id p6sm13409409pgs.77.2019.06.25.02.39.29
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 25 Jun 2019 02:39:29 -0700 (PDT)
Date:   Tue, 25 Jun 2019 02:39:29 -0700 (PDT)
X-Google-Original-Date: Tue, 25 Jun 2019 02:38:09 PDT (-0700)
Subject:     Re: [PATCH] riscv: Add cpu topology DT entry.
In-Reply-To: <20190624223819.14320-1-atish.patra@wdc.com>
CC:     linux-kernel@vger.kernel.org, mark.rutland@arm.com,
        devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
        anup@brainfault.org, Atish Patra <Atish.Patra@wdc.com>,
        yash.shah@sifive.com, robh+dt@kernel.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        linux-riscv@lists.infradead.org
From:   Palmer Dabbelt <palmer@sifive.com>
To:     Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-cbc0fa82-4c3e-4d7a-af9a-c730f7e3a3f1@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 24 Jun 2019 15:38:19 PDT (-0700), Atish Patra wrote:
> Currently, there is no CPU topology defined for RISC-V.
> The following series adds topology support in RISC-V.
>
> http://lists.infradead.org/pipermail/linux-riscv/2019-June/005072.html
>
> Add a DT node for unleashed that describes the CPU topology
> present in HiFive Unleashed.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> index 83f40b00ab63..907564f4f07a 100644
> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> @@ -22,6 +22,24 @@
>  		#address-cells = <1>;
>  		#size-cells = <0>;
>  		timebase-frequency = <1000000>;
> +
> +		cpu-map {
> +			cluster0 {
> +				core0 {
> +					cpu = <&cpu1>;
> +				};
> +				core1 {
> +					cpu = <&cpu2>;
> +				};
> +				core2 {
> +					cpu = <&cpu3>;
> +				};
> +				core3 {
> +					cpu = <&cpu4>;
> +				};
> +			};
> +		};
> +
>  		cpu0: cpu@0 {
>  			compatible = "sifive,e51", "sifive,rocket0", "riscv";
>  			device_type = "cpu";

Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
