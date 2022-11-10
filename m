Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3342B624ACD
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 20:41:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229796AbiKJTlt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 14:41:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229688AbiKJTls (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 14:41:48 -0500
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com [IPv6:2607:f8b0:4864:20::72f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BAE245EF5
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 11:41:47 -0800 (PST)
Received: by mail-qk1-x72f.google.com with SMTP id g10so1795025qkl.6
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 11:41:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+CIZz/8LYjnv0r5WOcSDl9M/axQS0Er/FY+4YSzRU2o=;
        b=Qcuz9H5D12oyHwYBNrkMO+O/fmF5Ty9dox6hVFO82jXg2oLd39B7bnoBhS5guN5WRM
         VZ5K6h7I68SVzQr5SkwWFWozE9Ysbtfubs74sm6ZwBmApqCWU3jo9+n7pYd8sAXfufeC
         tAzQ73gsZmFv8HVjWsnCqKhSGig+8/wwhf4gO7GqAz5Lz65dCBtO1bxIm15XQnpN9wEo
         8cVSdrdNDmQKcgBpCQGg+Ed9hR8g/enfCAlv69TfufgJBmpq6FSX05gYYVUxHhWD5jQM
         qCW1ZkFCnT3P9cdQFptLizAKEfKDTeG8lyuwbr22IionODYbpynebkzNn4zkeQ1dwqoV
         ngUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+CIZz/8LYjnv0r5WOcSDl9M/axQS0Er/FY+4YSzRU2o=;
        b=dK8uqyM8XUGFzLgQ1ZOAQ1lSMJjSSSNjO1KIvxbGthcSAokrXDtRr/GMXnjrSWpjLI
         DELgI3PcT6EuRjwmpT7tHsz2E/Q9BAoF/aXdkJbOOvU6BOMCF5hzy2pGvHTqKIj4JTPM
         5F7Og/xItKo6e7hIUCJKbTaVKQAe6Nda2eFeHwBUN2RH13T4L0dzW5zuZKlwrdNi1Ccc
         P7QMMV2II5ccz4YQDcm/0KGWeT3M1uA1kRSnzB7rOFGflZNCBI7/8wagpjlrlqmFlt2U
         xsAlsOA0NzmOGltBnItX24+lCKk2Eaf9Wxlq9yh9C5n9gGX9fIeA9sxC+OoI/ZWS6Ib5
         O4pA==
X-Gm-Message-State: ANoB5pmZ4eHDqF0ovfbtmUuO9gk8nlumAc72yTd/BqtZEv/wNOrpN/9o
        dJgV3uvTyhpVTxSYK3I4jH4=
X-Google-Smtp-Source: AA0mqf6LWgvyH38ymnsejN+/PFjEDjB8+O2iDznqAmZOV04aVXyntumxyy/fM/Tvm30ybtj/uY46QA==
X-Received: by 2002:a37:af45:0:b0:6fa:ece6:7d54 with SMTP id y66-20020a37af45000000b006faece67d54mr14516082qke.606.1668109306411;
        Thu, 10 Nov 2022 11:41:46 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id m10-20020a05620a290a00b006cebda00630sm119654qkp.60.2022.11.10.11.41.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 11:41:45 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     Ariel D'Alessandro <ariel.dalessandro@collabora.com>,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH V3 1/2] ARM: dts: bcm283x: Fix underscores in node names
Date:   Thu, 10 Nov 2022 11:41:43 -0800
Message-Id: <20221110194143.1730419-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221110173105.6633-2-stefan.wahren@i2se.com>
References: <20221110173105.6633-1-stefan.wahren@i2se.com> <20221110173105.6633-2-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 10 Nov 2022 18:31:04 +0100, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> A lot pinctrl node names, regulators and local_intc do not follow the
> node name convention to avoid underscore. So fix this by using hyphen
> or a proper node name.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
