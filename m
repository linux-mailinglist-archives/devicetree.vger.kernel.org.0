Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E83F4765CD
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 23:28:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231905AbhLOW2c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 17:28:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231573AbhLOW2J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 17:28:09 -0500
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1CB3C061397
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 14:28:02 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id bj13so33736230oib.4
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 14:28:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zNJXnvSs07GTtLLZAuVX1BCNo0uRWcG5BRLFd99VBjs=;
        b=A6zQSNgY/7S9UibonlY7GfSGeBaqyjarUfTYqvUlQXaV0tlgG0NUP9PtTH+N5A/9Yt
         46hgsHRPUfipDEr5quShnJww5ZffRZjBVypstFvCDx64BUQqwoLL2foZALrOXKjUzBIv
         WzW5JooFuEZR7L/5CmxsDu4mIN0IXxtOCLPVIM77QrpIHEH68vFUEkZ1UMn03IVZ6XcH
         couRncau756a1GAs8tE9XWSEOjKEV4CThLSPisxYPvYzHOyIpKCKwexHspDI4mTO+Zww
         6L+WcPQp/uretBg1tA3ZQZXa1Y7kA0LyxsHCR0losMbsCnfCqaipbFvZUchdGSj8E4FQ
         5wqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zNJXnvSs07GTtLLZAuVX1BCNo0uRWcG5BRLFd99VBjs=;
        b=UjmSfpqfI8TMPsodOdDeG/Dh5jdtb0pt80m+lqHgd0b5UHIquIHHpSZaY6KLvZf6sO
         u16J3dPvfIilu5vZdAkXg24cPepbhwjYg+UL0Jlb0a+0nJRgN+M42B/dhJFhQV8vozlb
         WJCK8a6Pea1JrZ86q1dXyxd+QnEyk9x6XNEQdHP5AE/qeZHvC75i5H33AHu8c81CcV6Y
         DaUunR/2ElC8/zAJxVnTl5Fs1w9Lta7VeQliiRRBLvf40Nq7GJ8M5rMoautGZXk3Xi4p
         1c04k+Am27EI+2d/0NSC3Otnz0h3TmhQoDivGzDrDoLor3MNy/1xKGuHqX0Kctqw4rL9
         3hPQ==
X-Gm-Message-State: AOAM531yOrG7LxDKuwt/lVFOCp4fT80pjqqfLqM+nOGsp+cJeIRNVw0g
        WEk/Zs5OqnAMKGHsbFnXPQEaOQ==
X-Google-Smtp-Source: ABdhPJwFXYdPBsDmuwPjYm8A5yZhkegTSZzeCJ0fMZ0B4URuSub04avPSXyXP3No3NVhP8fEqIASsg==
X-Received: by 2002:aca:1c07:: with SMTP id c7mr1861598oic.133.1639607282108;
        Wed, 15 Dec 2021 14:28:02 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id t14sm700500oth.81.2021.12.15.14.28.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 14:28:01 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     agross@kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
        robh+dt@kernel.org, quic_vamslank@quicinc.com
Cc:     manivannan.sadhasivam@linaro.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v7 1/3] dt-bindings: clock: Add SDX65 GCC clock bindings
Date:   Wed, 15 Dec 2021 16:27:34 -0600
Message-Id: <163960723735.3062250.15848772572019435761.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <e15509b2b7c9b600ab38c5269d4fac609c077b5b.1638861860.git.quic_vamslank@quicinc.com>
References: <cover.1638861860.git.quic_vamslank@quicinc.com> <e15509b2b7c9b600ab38c5269d4fac609c077b5b.1638861860.git.quic_vamslank@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 6 Dec 2021 23:32:49 -0800, quic_vamslank@quicinc.com wrote:
> From: Vamsi krishna Lanka <quic_vamslank@quicinc.com>
> 
> Add device tree bindings for global clock controller on SDX65 SOCs.
> 
> 

Applied, thanks!

[1/3] dt-bindings: clock: Add SDX65 GCC clock bindings
      commit: 8f8ef3860d4403d1bf0887380f9e3376be092c40

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
