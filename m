Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 610634A56A2
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 06:23:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233918AbiBAFXL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 00:23:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230526AbiBAFV1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 00:21:27 -0500
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3728C0617BF
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:54 -0800 (PST)
Received: by mail-oi1-x22a.google.com with SMTP id r27so9034659oiw.4
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uKKF0DixGLSuYZdT57I8IBRj5pAlwoHq/5NqWmRpYik=;
        b=gtmlnXbKrvagQAcPBq82OYsHoMGGp7EMJeJ5eSlTpCk0qfRHUH8pZbriP6kZGCgkET
         MZtMi+piJ0Gf5W8Qz2OEkhiRPSp6rofSIR0UKYAUcaPlWzGCXjFHquA0D+cj7owlvpkL
         as8zF5NHOeevVS6168uyDgpkoMKpMWZ8rSL9ovGxKqa8lX+x+39cqHzhsHmxlOwgXvXr
         oznG1WdCjTs/Q4Rrorv2ZxflaSCxPqzj1ETLy0GETB7PBIEqhb1Vclf6ihUXrNjsTZ6d
         ZhxvWECfhwMCCEcrAIM+yuHQVhChc/kTu1nZeXbGwNB861oA3DzESF9btEwNWfoPPDhS
         e2NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uKKF0DixGLSuYZdT57I8IBRj5pAlwoHq/5NqWmRpYik=;
        b=ygDS82w6UfI4CbpMCauLwSRuZYIrNJyVRAK3qRtla3roeCHS22ljIkoskyDzM9o2hx
         n+HSp1/nuvYX+PnQqAl0OiKFuCYhiYYelh8iP2qAOBrpbrs2CJMScB7W9xQ7tJ9zsB7T
         7dscXtp2l7y3xSAxOYD4MPSytsLg7yiiVDJ4wwXt0U1kzd1kO9Fe9k7g9xq0GdkirkBl
         kz9t9zRjadeXAoU1VmGpGsdc0gpR0eCI/6Brwe12AZBveY5t00AbU3ANnZ5S9MrEKdh8
         dQ1pXEww8NgOAZ23Aj/+tHtc+Pds7JagSETQh4lnkRQwIoaEdM84iXbVCMgeBLTOP8l+
         rCXA==
X-Gm-Message-State: AOAM532hbiB/M9Ox2g/dTQ82hbuVyUYHBdLK+z6S70OGCNy+MG+gEFvf
        f1cm8whXw1shfHNyfyoFv8zPgQ==
X-Google-Smtp-Source: ABdhPJzghGLwJlOB3aMCybmfc7OWRpNb+uNacVFAMvqROswzPZpqVWZNsCXNZLh2+d3dbXjo7AbeNQ==
X-Received: by 2002:aca:5a06:: with SMTP id o6mr205846oib.315.1643692854349;
        Mon, 31 Jan 2022 21:20:54 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id u3sm8193107ooh.19.2022.01.31.21.20.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 21:20:53 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     daniel.lezcano@linaro.org, rafael@kernel.org, agross@kernel.org,
        rui.zhang@intel.com, Thara Gopinath <thara.gopinath@linaro.org>,
        robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [Patch v3 2/3] arm64: dts: qcom: sm8150: Add support for LMh node
Date:   Mon, 31 Jan 2022 23:20:04 -0600
Message-Id: <164369277344.3095904.6974097611997730306.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220106173138.411097-3-thara.gopinath@linaro.org>
References: <20220106173138.411097-1-thara.gopinath@linaro.org> <20220106173138.411097-3-thara.gopinath@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 6 Jan 2022 12:31:37 -0500, Thara Gopinath wrote:
> Add LMh nodes for cpu cluster0 and cpu cluster1 for sm8150 SoC.
> 
> 

Applied, thanks!

[2/3] arm64: dts: qcom: sm8150: Add support for LMh node
      commit: 2ffcfe791d05e19feb105419efc030fc8ae1e527

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
