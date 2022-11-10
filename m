Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAE0D623E4D
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 10:11:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229719AbiKJJLD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 04:11:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229669AbiKJJLC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 04:11:02 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0920FBC26
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 01:11:02 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id c25so704481ljr.8
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 01:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5TyiGZEVWf0yEmJpOUu/TQoYQ5IgN+baA9Fut+Wev4A=;
        b=wQab/wOr4XpExF9P8sjOKer2pU5imYc+Q4yC3i9/H+hqt9Da53ljUonrNuz/LIwiT1
         xI2BXNkxcdyxSZwkxaaso4v6klBxSqKgYFfWlhfC1O8F8hacIpgnYbbpfeMTq+gMTjVh
         8K24xUq05gkaFcHS+J+Irshz6eQ7im34sULYQIrvyEcuQ5CjLgCV0KetwEaIL+YS6LX9
         7LqWQy9PyszO585bAL267oTrkAMiGl7RjL1uxNThdlbfRisMfqQ6SwOQ7A4yN8MTiYTB
         vo/l2Os3cXHTVKT5doFORKT0uwuX1S3fbOwHf+oVZUrhclz6D2n5aGq30NUDIA527Wic
         TNoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5TyiGZEVWf0yEmJpOUu/TQoYQ5IgN+baA9Fut+Wev4A=;
        b=b4UoB8GDkYno2aP73bK/lnCGcw8UGY9HvtR9JbT4zLmNmAjGbbN0HjRT1l0zKTkESv
         ZrdXJLmYdQ5pXYgruIyUPtq8zhOly5ncAEUq85miAh4t0j2g+UpIOJmbWLoSGz/CBzi3
         RZ+W161sSxesN1MyRIUAbLJraYOH0TT+6oSsiRxcMw0OdFLyZzt+wT3T4kEtd/W84QFA
         txCVCqvM3RznbAdnYD2ZBrJWqnwdAHRlN/qd4fukj+U+4fmd1tCJljoMq6c+HKruDEhe
         4cCoIj+g96H5IjqeFlhuILFp11A5qX945zqnl+ZU6Q2NRNvtO+pyQ731mplHR9VjnX3l
         fSrA==
X-Gm-Message-State: ACrzQf2jyCKqTHIfIcqwcdlmKyG1oBquiYCAXQmmDgmrI58ulthnw/nB
        iu0FjXm86RR3SQjiXqX51psPPg==
X-Google-Smtp-Source: AMsMyM4ZsUaP8G4gP32y6A2vfosoDS6jJRGdaLbEenyn6ojqn5cy6wbGQXfzrZmkTC9AZcgoc6R7/A==
X-Received: by 2002:a2e:a314:0:b0:277:c53:4c45 with SMTP id l20-20020a2ea314000000b002770c534c45mr8879775lje.132.1668071460419;
        Thu, 10 Nov 2022 01:11:00 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id c10-20020a056512324a00b004afc1607130sm2658713lfr.8.2022.11.10.01.10.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 01:10:59 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-edac@vger.kernel.org,
        Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org, tony.luck@intel.com,
        mchehab@kernel.org, michal.simek@xilinx.com, git@amd.com,
        bp@alien8.de, robh+dt@kernel.org, james.morse@arm.com,
        rric@kernel.org
Subject: Re: (subset) [PATCH v2 1/2] dt-bindings: edac: Add bindings for Xilinx Versal EDAC for DDRMC
Date:   Thu, 10 Nov 2022 10:10:56 +0100
Message-Id: <166807145377.16822.15787804198836912482.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221107062413.9642-2-shubhrajyoti.datta@amd.com>
References: <20221107062413.9642-1-shubhrajyoti.datta@amd.com> <20221107062413.9642-2-shubhrajyoti.datta@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 7 Nov 2022 11:54:12 +0530, Shubhrajyoti Datta wrote:
> Add device tree bindings for Xilinx Versal EDAC for DDR
> controller.
> 
> 

Applied, thanks!

[1/2] dt-bindings: edac: Add bindings for Xilinx Versal EDAC for DDRMC
      https://git.kernel.org/krzk/linux-mem-ctrl/c/9342498ca3a499faa2152216ecd644b0888f98d7

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
