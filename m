Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1F7B567481
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 18:36:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229925AbiGEQgi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 12:36:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229701AbiGEQgi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 12:36:38 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6F3FBC3
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 09:36:36 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id m184so7390386wme.1
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 09:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EmLnrG7RjmkZkoaedf/AcqY9w1jbh+1fWdmZ7QBondE=;
        b=Z1oOdheVZJ6dQa0p776tKZDLAYHAcaJOVw+nUPxr64CsjIv0yWyAlaHUUrZpYTcpP+
         cqFE73JKR3DVixXSjp6tqcrZm12zENvd5UUdlXAcoluzdUX/m/5AdEo3+VjjxqO1keQR
         c56FElMX+ntpRB7eiyp4c9qM5D5/CliNFRbzJlXulzBghYMI/4Boouno2pVhpiJOQHyr
         KoiTbDfd/8WHcI0W43kcp/48kUp/xff6++NghjIZtWAZmIni+IirUUHq8yqWKmbppLTH
         2P463lFjpbEQR2qSZ4E58ejWBnfmhVIG6kfvRV2frF93N7i3nAiQx9zaBEqFh/kOxCmY
         CUwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EmLnrG7RjmkZkoaedf/AcqY9w1jbh+1fWdmZ7QBondE=;
        b=QYs1oqRJ6CyOW51KR4mO9QoM2T4FV8qT7t25GDOJxS8LPW78kjUeiv21p31CkXOEvy
         ouTPBOoCtrQubqZpCShJOHbwND7W+whv6tnYJSnxapoc9h+QWOBafEmn9S3VfuEzE9Jl
         ucqppy1zK/HeYymubfR4LOmlFbzSY4xgA2+/y2pt67zszTaLk63K6OkjtwNb+6pUSrCJ
         jbssb0bWD5+5zyXrX71gOFYd1b7x0XGKarBQKsHMIS/khNcCpGIwcqeFGPlw6lAmFad/
         wrDMnh2hU0tyREYB+49woTnkc81NAo5J8XS+BC7p643Hf9XanQeHqCSlLEgukiuiHzby
         f1uQ==
X-Gm-Message-State: AJIora+EcjDsD+PulvQz4w7KRhoYChXdf6SzZA+rgH5vBhjOr3tRWzJF
        LDqa6W+37xqO0qEc0gmX0zXTQA==
X-Google-Smtp-Source: AGRyM1s8cE4Ve852oDDbv/xzRRKOZSh7Hnd8kW0luPTYEl3BHhAHGA2/redgAa8G15v7C7LgFSVKlw==
X-Received: by 2002:a1c:cc1a:0:b0:3a0:39b1:3408 with SMTP id h26-20020a1ccc1a000000b003a039b13408mr36733506wmb.157.1657038995336;
        Tue, 05 Jul 2022 09:36:35 -0700 (PDT)
Received: from henark71.. ([51.37.234.167])
        by smtp.gmail.com with ESMTPSA id q17-20020adfdfd1000000b0021d4d6355efsm324298wrn.109.2022.07.05.09.36.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 09:36:34 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     palmer@dabbelt.com, linux-riscv@lists.infradead.org,
        daire.mcnamara@microchip.com, palmer@rivosinc.com,
        ivan.griffin@microchip.com, conor@kernel.org
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        devicetree@vger.kernel.org, paul.walmsley@sifive.com,
        krzysztof.kozlowski+dt@linaro.org, atishp@atishpatra.org,
        aou@eecs.berkeley.edu, sudeep.holla@arm.com, robh+dt@kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] riscv: dts: microchip: hook up the mpfs' l2cache
Date:   Tue,  5 Jul 2022 17:36:23 +0100
Message-Id: <165703891541.1175279.9783601760471076609.b4-ty@microchip.com>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220629200732.4039258-1-conor@kernel.org>
References: <20220629200732.4039258-1-conor@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

On Wed, 29 Jun 2022 21:07:33 +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> The initial PolarFire SoC devicetree must have been forked off from
> the fu540 one prior to the addition of l2cache controller support being
> added there. When the controller node was added to mpfs.dtsi, it was
> not hooked up to the CPUs & thus sysfs reports an incorrect cache
> configuration. Hook it up.
> 
> [...]

Applied to dt-fixes, thanks!

[1/1] riscv: dts: microchip: hook up the mpfs' l2cache
      https://git.kernel.org/conor/c/efa310ba0071

Thanks,
Conor.
