Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E7F156AE6E
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 00:29:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236943AbiGGW3M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 18:29:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236799AbiGGW3L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 18:29:11 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FB7E61D61
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 15:29:10 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id n185so11452452wmn.4
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 15:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yBL3Qyiw2yU4MEqrOIkV21CEVLt8E6eaNuc5XFAqVgo=;
        b=FIs7rf6SPWuGcAR0XCFWnjYw5T/OzNPnd9YSnTFkFAORauCxEU4Aczweq5XUCyU7kC
         S6RAs/jQU9b9oym4qyKPg8K7NvN+W2Vqk+MfOsIkqhFSyTG7R1rpvU/VnfhMOfJKREgf
         OYH40nwLHktSF2Fmgwdrt7PGSxYOuuMS6lwniQpOYOQjmOQCDMXunwkOoB/XcfAGxPcW
         k9y2BBZmIKiNI1EcqHHmxgbwIveR1WuD4foEDFPBS0PYWKl80+8iwMicmElV0Yeuf3ah
         6mq7A3UoXc8Kw2cdGowOwd4goKJ6pH1HhidVzp1le/gHe7ifDIu0YMC9wBqp2j4Shy5H
         jCMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yBL3Qyiw2yU4MEqrOIkV21CEVLt8E6eaNuc5XFAqVgo=;
        b=Fct+kgvmQQYL+jU2/CcURGoJ1vJzucP4UzQsz+BGhzqgOr9FzV0CzW2Tf3M7Qiv0Ty
         Ixk7BYBEFR9VAfEs5fC4VeY+G7vYpH+apt6Ngv3h7MKQ1qK2VhZshbpmici1XnxumOcQ
         OUqbtArYqGvYeRN0rK+o2764Ak99HLg+47qouhSIKitzij/FbOaEXXNPWdJqtlNZMyzQ
         Wp2/sg2QCn4P9ojLa9jdjScZ3ouqWgBQjdtmUh4cvI9u91aAB/zTyW6ax7as20GYaC2f
         mqcWIMODIbZ92UkjJc1ot8Jx0enVkQLLPb70OQnKsXr06KB1qGC3H8NUbgwVM0NPjz1f
         PJVQ==
X-Gm-Message-State: AJIora/f2njfH+8lPp6b8kgmraUtA7a5RNqVPmB5WQ8GIAP9Z7OCLvoW
        vrAdwec1NtYkQ48kil70c3B6xA==
X-Google-Smtp-Source: AGRyM1vHQ4F1C7uBW7hPq+3do+lBz+obsL6jknlXj5UKr4APcprktMviJ51oUK55Q3Z3fUeppuJe/A==
X-Received: by 2002:a05:600c:1d17:b0:3a0:481b:f1e1 with SMTP id l23-20020a05600c1d1700b003a0481bf1e1mr7023439wms.136.1657232949057;
        Thu, 07 Jul 2022 15:29:09 -0700 (PDT)
Received: from henark71.. ([51.37.234.167])
        by smtp.gmail.com with ESMTPSA id r190-20020a1c2bc7000000b003a18de85a64sm148855wmr.24.2022.07.07.15.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jul 2022 15:29:08 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     zong.li@sifive.com, robh+dt@kernel.org, palmer@dabbelt.com,
        daire.mcnamara@microchip.com, niklas.cassel@wdc.com,
        hahnjo@hahnjo.de, kernel@esmil.dk, aou@eecs.berkeley.edu,
        geert@linux-m68k.org, paul.walmsley@sifive.com, mail@conchuod.ie,
        damien.lemoal@opensource.wdc.com, krzysztof.kozlowski+dt@linaro.org
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org, Brice.Goglin@inria.fr
Subject: Re: (subset) [PATCH 0/5] RISC-V: Add cpu-map topology information nodes
Date:   Thu,  7 Jul 2022 23:29:04 +0100
Message-Id: <165723282709.4170238.17783892176422654947.b4-ty@microchip.com>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220705190435.1790466-1-mail@conchuod.ie>
References: <20220705190435.1790466-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

On Tue, 5 Jul 2022 20:04:31 +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> It was reported to me that the Hive Unmatched incorrectly reports
> its topology to hwloc, but the StarFive VisionFive did in [0] &
> a subsequent off-list email from Brice (the hwloc maintainer).
> This turned out not to be entirely true, the /downstream/ version
> of the VisionFive does work correctly but not upstream, as the
> downstream devicetree has a cpu-map node that was added recently.
> 
> [...]

Applied to dt-for-next, thanks!

[4/5] riscv: dts: microchip: Add mpfs' topology information
      https://git.kernel.org/conor/c/88d319c6abae

The rest is yours Palmer once reviewed :)

Thanks,
Conor.
