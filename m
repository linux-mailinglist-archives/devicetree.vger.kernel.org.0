Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA1DA7491F6
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 01:40:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232076AbjGEXko (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jul 2023 19:40:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232075AbjGEXkn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jul 2023 19:40:43 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 694A2198E
        for <devicetree@vger.kernel.org>; Wed,  5 Jul 2023 16:40:42 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1a1fa977667so196055fac.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jul 2023 16:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20221208.gappssmtp.com; s=20221208; t=1688600441; x=1691192441;
        h=to:from:cc:content-transfer-encoding:mime-version:date:message-id
         :subject:references:in-reply-to:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NLLif1KY2D3x/oQIb0fD6DgvzVEwBt9PgSDAy1D7jfw=;
        b=GUqHR3iKA3GKI3FuCSb+pdbJzC8NCKsiIcv9MeUIUvVgtc5fdWqZABfE+K9cmW/amq
         zWhMXjO2ROJtnMmSGMNvotrD3ew37U0nxfF4Jelj+YkaCXP541t0HaQyDY/WF9B5KVpv
         2vGrYoqoPpFqUJQ8w0yLdkhTnnA70PliwOjBBjpciRhQj/2X8fOhvFYpt2UY2s/fvw2n
         5s3fJOmoHlv/Mq3CXmD7kImG0SmvSfQGlGosw3lE3j9EYXQh5r9qyjR6A2KRWpV8zy+G
         ctpYQrsNTFQoR0P8QUxAml2EIsaoejiP7D8UnzHHacxXkal7+h5nkx8ow1tQJSoqc3G2
         5UZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688600441; x=1691192441;
        h=to:from:cc:content-transfer-encoding:mime-version:date:message-id
         :subject:references:in-reply-to:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NLLif1KY2D3x/oQIb0fD6DgvzVEwBt9PgSDAy1D7jfw=;
        b=dvliXCj5cC3uDre/XkFDhApT7uvFhFL46k4oa+ZuGTYHievhAS5Io2WDrec9zvo017
         AINGK19ShOwe3SWwXsv+GQrASJcXTRou5FdopewTaPq0BiPmviRR3SRdpgj77z4dB6a4
         +foFVwyVlh2XX3/Px3jLWAIV5IgED7G3U3TOSiGxHBJ+qO0S2IVC2OaJVeuOU6z7eINF
         H+E6CJsGzm7X87ALDRu8+1pg+mLyz9iDJI9Gt3McNNUz2AyJWt9p+5AiRtiAY6ogCLzX
         UFu/a8PhMmNJDPnCnQuGF5e8XdKZsTIBgvmJbAMS/FWTCCaiTYizrtJmu6j1XZi7c2Jf
         KzfQ==
X-Gm-Message-State: ABy/qLYJ3YwKo8CPyzKeEtaDRYikFQIXZk2G1gIIkOcts+aqj5W7mJCO
        Z2gGNF0e9GVn3YJ3y3+7xElHfQ==
X-Google-Smtp-Source: APBJJlGhY6ik2a9lxlF0RgXnj1DEVnZ0h08AlHINQ5Ed9RK6Pu0MrgIAW8hiIMXydNfQShpu3O117w==
X-Received: by 2002:a05:6870:79e:b0:1a7:e554:500a with SMTP id en30-20020a056870079e00b001a7e554500amr631818oab.49.1688600441720;
        Wed, 05 Jul 2023 16:40:41 -0700 (PDT)
Received: from localhost ([135.180.227.0])
        by smtp.gmail.com with ESMTPSA id 14-20020a17090a194e00b0025dc5749b4csm2047993pjh.21.2023.07.05.16.40.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 16:40:41 -0700 (PDT)
In-Reply-To: <20230702-eats-scorebook-c951f170d29f@spud>
References: <20230702-eats-scorebook-c951f170d29f@spud>
Subject: Re: [PATCH v5] dt-bindings: riscv: deprecate riscv,isa
Message-Id: <168860030764.22647.8715497868636301645.b4-ty@rivosinc.com>
Date:   Wed, 05 Jul 2023 16:38:27 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-901c5
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alistair Francis <alistair.francis@wdc.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Anup Patel <apatel@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Jessica Clarke <jrtc27@jrtc27.com>,
        Rick Chen <rick@andestech.com>, Leo <ycliang@andestech.com>,
        Oleksii <oleksii.kurochko@gmail.com>,
        linux-riscv@lists.infradead.org, qemu-riscv@nongnu.org,
        u-boot@lists.denx.de, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
From:   Palmer Dabbelt <palmer@rivosinc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Conor Dooley <conor@kernel.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sun, 02 Jul 2023 00:10:01 +0100, Conor Dooley wrote:
> intro
> =====
> 
> When the RISC-V dt-bindings were accepted upstream in Linux, the base
> ISA etc had yet to be ratified. By the ratification of the base ISA,
> incompatible changes had snuck into the specifications - for example the
> Zicsr and Zifencei extensions were spun out of the base ISA.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: riscv: deprecate riscv,isa
      https://git.kernel.org/palmer/c/aeb71e42caae

Best regards,
-- 
Palmer Dabbelt <palmer@rivosinc.com>

