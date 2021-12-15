Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66E8F4765EA
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 23:29:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231378AbhLOW1y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 17:27:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231352AbhLOW1v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 17:27:51 -0500
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35A0BC061401
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 14:27:51 -0800 (PST)
Received: by mail-ot1-x32f.google.com with SMTP id n17-20020a9d64d1000000b00579cf677301so26695837otl.8
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 14:27:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uMH+tauyk4qU+deKuogvz5Hb6vX2Nj5qiv5JUliMof0=;
        b=wZl+xEEBCwRrMg1IiZAKsWQzZA9X0jhUIoMSZ1TbNEsTPGbSX62XTJWe7NP0DlK06Q
         ceRwCitM4oiUUvZ4X798X2mudJ0pBHf10KOomSwCpuFt+udvGrGRjq58T7eWQouBWe7K
         c3QJ5B5F7bGAEbemPNUeH75/VOsDJh89vgPEsFVbZGIqaXAHcgFR4p0DhUA53fG5Y/le
         ZpOpcNuPXJpoBOdTxIJWC+lOZ8qFMw/luzUXvXab6jd4fQ1NKiRHOc3abpvmGv+ub7d6
         2d8t03nEeJnMuH92d4Yho4T2ItnvUXUbBpbJI3iOdWM5oS1dvlqQglDJGjXOHfyxk2mc
         EI7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uMH+tauyk4qU+deKuogvz5Hb6vX2Nj5qiv5JUliMof0=;
        b=nxhl0jf+8NV90gyDe6nb/5LuDgqUAUza3d6HyocdGPb8ilArzGQUjBienbP/s+xF8B
         BZveY8MnTtDt5NvbUvy+EDaGIe3gQHDh5dF5d09ZKA736ibLGjItAevNmrohdBTr5T1L
         kuTAjfNNhb6e195ahExHTb3iefUlWNXsVyEQFfLaJVtZvIyti7DpnDDSRwcdkErg4QV1
         6dNdX8M1NXIO59G+/4rFbLK9hQsB8iRY/nua2mPIDBLC7+az82ioFKsRE56129i3R1pE
         GoertQtnmSRe9f+JlMa5901ioxwxXx+TzBu6iNE9w1w+Wl/gW73sUVokv9lIV+tY4GvN
         Fs3Q==
X-Gm-Message-State: AOAM532kSYkz19abKM+rsY68fHnHBxXLsWN41zHnH1e5/KBoYrF2yFoI
        IS72OgJhNcFNQInzAZf+nO2SvA==
X-Google-Smtp-Source: ABdhPJwvHeMoN84lmjhtlUST2TnyhVHQDFniIultj60mIsCQmJE4CjsjCJOcNLpJmH79P0/+b+4xZA==
X-Received: by 2002:a05:6830:1d7c:: with SMTP id l28mr10598356oti.372.1639607270568;
        Wed, 15 Dec 2021 14:27:50 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id t14sm700500oth.81.2021.12.15.14.27.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 14:27:50 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, ~okias/devicetree@lists.sr.ht
Subject: Re: (subset) [PATCH v2] arm64: qcom: dts: drop legacy property #stream-id-cells
Date:   Wed, 15 Dec 2021 16:27:22 -0600
Message-Id: <163960723735.3062250.8434148665748805733.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211208184707.100716-1-david@ixit.cz>
References: <20211208184707.100716-1-david@ixit.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 8 Dec 2021 19:47:06 +0100, David Heidelberg wrote:
> Property #stream-id-cells is legacy leftover and isn't currently
> documented nor used.
> 
> 

Applied, thanks!

[1/1] arm64: qcom: dts: drop legacy property #stream-id-cells
      commit: 409fd3f10c0b71dabff735d5f290096d6bb6b4df

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
