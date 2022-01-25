Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 10E2949B9BA
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 18:09:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238582AbiAYRI5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 12:08:57 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:54578
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238236AbiAYRFi (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 Jan 2022 12:05:38 -0500
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 6F81C3F1D0
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 17:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643130334;
        bh=nMdW5v69q6Wohx/luhbyzlU9+wYmArcJIac8Q+rwqeU=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=qGDycotR9fy9D9pUTazcK1pdos+/bsTEs/cc6dTz3ntJ7jzGn3w7Z84CmF2QziLjc
         3VloLuh0XkSWMHrQK3Xvk+SC6EmzX00hbrp1XH41UZt7PEmRkl6Ysgo/TrcTHQRzLj
         3um5Ok3gdLi3fMKCcTkemmMnwBCESMVF2pjK7whAIhSTE6tWI//EhiEepJnXAtFeos
         8gW8NXw8aZAjWHfcob+ekPhKtCLUfGjbpCaxXc4y2lfnQxIvEsTfOchVimvnbUhmbc
         +e3OC7bxiXWqnh9Exyikloqaa6ZEB0pSud7TW3b5z/wAz2pOLxC02c0hHBoBc/PyW9
         evZUG8yNloFLQ==
Received: by mail-wm1-f69.google.com with SMTP id v190-20020a1cacc7000000b0034657bb6a66so6456731wme.6
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 09:05:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nMdW5v69q6Wohx/luhbyzlU9+wYmArcJIac8Q+rwqeU=;
        b=mpjOSM+Wm7dEXahtE+9hijlF2Cz7Js4zqUZQ2N/u8fEAX7xwYhssSz4ZiGAyZ358hu
         JDSBUYoDd5EXMKe2A93h9V4fN8bcVi8EF+1gTRwPUt+sfMTyCMJ846YknZWukRwbAQ++
         uHbN/K2SBhQx9paQDLr1QndYUyz3ydRoM8glnFHYvlqgnc2WQZVeHuSCdEfLaIrmKKzN
         I1kmhSnCJtQR0emb/tLesJ8iPGXndlk2cF6boAHO9yzfS1DLosW4fuVmPk9TdxmplbLg
         y5fJQmRhvMRsqzAMvaD2T4Nq3t9EpdZSUW4Kvbi3wWcnSp1xPnuXUMREGtV7g+S9T84s
         bXgg==
X-Gm-Message-State: AOAM533cmpb2lfQXfaxDnL777EXQz2+LrlgO/eyFbtsStcky6PeyTMcA
        vXnKRrKWb/nLmDiTcrZ+EAGsaijEVcA8Tes3+cvrXdxQIN3TCQchJWIEO5A4cAbDM0LNZTVKEXu
        5IYduEv4eObH0pt7bGW7hgCTfP7yGDy5NZg8UsIE=
X-Received: by 2002:adf:e3cf:: with SMTP id k15mr14685558wrm.5.1643130333915;
        Tue, 25 Jan 2022 09:05:33 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyDMNurXGEYwtfMsLt1TRMNkY4zf895J7er0VWSTdW1WADBBTbrJZhBCjzjcyuRZBB6Z7JRYg==
X-Received: by 2002:adf:e3cf:: with SMTP id k15mr14685547wrm.5.1643130333723;
        Tue, 25 Jan 2022 09:05:33 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id o15sm1082377wms.9.2022.01.25.09.05.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jan 2022 09:05:32 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: exynos: use define for TMU clock on Exynos4412
Date:   Tue, 25 Jan 2022 18:04:55 +0100
Message-Id: <164313029072.79782.9597131661612342819.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220122131457.63304-1-krzysztof.kozlowski@canonical.com>
References: <20220122131457.63304-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 22 Jan 2022 14:14:57 +0100, Krzysztof Kozlowski wrote:
> Replace clock hard-coded number with a define from bindings.  No
> functional change.
> 
> 

Applied, thanks!

[1/1] ARM: dts: exynos: use define for TMU clock on Exynos4412
      commit: 86955cb6ba16cd35323f498acbf0f07f8671c1b4

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
