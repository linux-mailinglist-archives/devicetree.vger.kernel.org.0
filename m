Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 249886EF89C
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 18:46:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231397AbjDZQp6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 12:45:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229605AbjDZQp5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 12:45:57 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA03A6581
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 09:45:55 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-63d4595d60fso44666807b3a.0
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 09:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20221208.gappssmtp.com; s=20221208; t=1682527555; x=1685119555;
        h=to:from:cc:content-transfer-encoding:mime-version:date:message-id
         :subject:references:in-reply-to:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v8WCg0DbavHUTGQfNC9CNLNlK2UqZh6KuQcIt3KI09Y=;
        b=Id3EjrDuiGcspQmAnx0ZsadBd3GD8VTYQTBeFohznHkk5BH8eJICeAAgiGPb0DyAbs
         IUr4RMLj/l+kKlyu1dXy4qWUa8LRJMU73yiJDG4U9LUSBpDpe/gkcV8OaKHvxtucbqxY
         Sp/rKlu0I+3moSvzvtReSeWSxQqzmDRadnrc55zQ15f6mjcv+xER/uK+SFgykFJSKxp6
         CdElDSvfpH71JEpBFVUxXmZ9ILWdSqsVCgOr7EG8HhVWfIpDRetTS8HgwbyILVCgYbn2
         cPgObrsLr+OCwKVMPeLo1TdDIWJQZr135jE57e+fg7Xjvc9yfL8FdJgQgu+7dR6Lhm5Z
         JIQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682527555; x=1685119555;
        h=to:from:cc:content-transfer-encoding:mime-version:date:message-id
         :subject:references:in-reply-to:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v8WCg0DbavHUTGQfNC9CNLNlK2UqZh6KuQcIt3KI09Y=;
        b=BrdyUeJQ0w4LXYo24kmYugK+vhbkL9Xjd3n8DrbTWncEgdj3sw35WkTGE/vobLySN/
         t9A+QVc5TvecNJhG4GeLG5CciuqtSbWExoCp3t2N7A4vA80nWObnDLX5vVXyaK5huX1/
         uZ+30zNGlz4M3ksOGmAc8UIGu12zP6BRq3G4H46XdwUKFWmHFHV4/MVAyQ9J2u0oRVmK
         eX7B368QkcuNACAmCr+I9AxXostuPYXVZ3jYrHa3oRd9u5K4uzk9CVod84cRl1+Ec7fC
         2wUDdVFay5LXS0p1ZbZoyn64e5T1JNZsU1nQ4oqrO24GTjdB6NaczNNpTedoGmlFvWr6
         T9WA==
X-Gm-Message-State: AC+VfDw7NwyQMvN17pCGKJKtvxj0S2/4jbWH1BcCyJm35s+IwyRaDbFG
        1S5JTISQrZASWPiG+si6U1ZDww==
X-Google-Smtp-Source: ACHHUZ6tGIsEUFAb6yVJqOuxcDgkivNXP8hXw84xfPO5NUKHaPCY17+lkpeq8w4Bl4N5UKb32MZJxw==
X-Received: by 2002:a05:6a20:7350:b0:ef:4fa7:b1ee with SMTP id v16-20020a056a20735000b000ef4fa7b1eemr3687055pzc.4.1682527555253;
        Wed, 26 Apr 2023 09:45:55 -0700 (PDT)
Received: from localhost ([135.180.227.0])
        by smtp.gmail.com with ESMTPSA id x9-20020a63f709000000b0050f56964426sm10036648pgh.54.2023.04.26.09.45.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 09:45:54 -0700 (PDT)
In-Reply-To: <20230424-rival-habitual-478567c516f0@spud>
References: <20230424-rival-habitual-478567c516f0@spud>
Subject: Re: [PATCH RESEND] dt-bindings: riscv: add sv57 mmu-type
Message-Id: <168252462347.26895.2637779142732183500.b4-ty@rivosinc.com>
Date:   Wed, 26 Apr 2023 08:57:03 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-901c5
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        linux-riscv@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
From:   Palmer Dabbelt <palmer@rivosinc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Conor Dooley <conor@kernel.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 24 Apr 2023 18:05:43 +0100, Conor Dooley wrote:
> Dumping the dtb from new versions of QEMU warns that sv57 is an
> undocumented mmu-type. The kernel has supported sv57 for about a year,
> so bring it into the fold.
> 
> 

Applied, thanks!

[1/1] dt-bindings: riscv: add sv57 mmu-type
      https://git.kernel.org/palmer/c/d4dda690b44a

Best regards,
-- 
Palmer Dabbelt <palmer@rivosinc.com>

