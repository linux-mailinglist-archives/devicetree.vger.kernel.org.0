Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DEEE246AC18
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 23:31:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353559AbhLFWej (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 17:34:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350984AbhLFWeh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 17:34:37 -0500
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7074EC061746
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 14:31:08 -0800 (PST)
Received: by mail-ot1-x32d.google.com with SMTP id v15-20020a9d604f000000b0056cdb373b82so15562540otj.7
        for <devicetree@vger.kernel.org>; Mon, 06 Dec 2021 14:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=57JPETQgBTaJ30RDBE5rt7bCqaiFIZIAcQryzj6O4Eo=;
        b=vLSBuFH6wSpm7Ne+J6aeSqhGgQVkjiv7soe0K0AAAPCKJ6h6fhxZ84XgPrTMd6CEXW
         LCImoo2RNnjEbr10KpT34cOl+UAnlFV3b8FlbFGGLtprcM/tJHMzxuVBo2B5rQp1kAN1
         ixnFwoPORWn/exs0jH81eOHB/M/1gATo5ZPiqpWL/sA0aDW/CsWyAAs0kr6jjjtG7W0L
         WACvQXTAKDp3vs2QSwZ7VjCypGj3ioGGnHdw8aOEFP8yMlhAxgQfWVBMAEtb5vt2j2RH
         vZikO6mFieuankGsZWewtC0vrjEwvJcZ6exWbOvuIEPgTr1r5PeRGLh1H37ckTOkdx9B
         7Nmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=57JPETQgBTaJ30RDBE5rt7bCqaiFIZIAcQryzj6O4Eo=;
        b=wadpW6nopYfNkZ5FoFG7t4xHWMQmjKecqPAROZqkn7PFGSak89nnSi0OAoZB3K3w/V
         UVF+1L1xZtR5ikskjHa3VM6W0eYyeIucyfUBAVPVU1JpJDxc9kyZ2uW0LMYSWMgY366Z
         izW+nC+nRbnLkQbKf6UMUgEuotO+lVV0Ut8egBGxozgz2K1dIwkymPJIaAksK9vjwiF5
         x0H9ysGwiSk/JdeqtOKDtnI3JrLKFMTV6h957eOZkT2dCTdgfVoSjR0eAYCmtIX4X7P3
         MrVOtjnS2qkq5ZQbMORjrHdOlfnIosb2YoPga49CCn2jcFxKoK6zrM3O2dQbPVGwWifQ
         Bh/w==
X-Gm-Message-State: AOAM532pKE7cQflleE2JA23Do9t3yx5X1zuU+H7LPZl9ugus5Bb8D0o/
        1QheIXGqRIa+azCFLPFi8bZ0Gg==
X-Google-Smtp-Source: ABdhPJx1Dlz+fs4rQXet/Ju7L5LEsS9EJK6cI0IjMmnDjYIK2MfUjGZuc5+9+b6nUf7N2TEokBj/8g==
X-Received: by 2002:a9d:67d5:: with SMTP id c21mr32081346otn.128.1638829867819;
        Mon, 06 Dec 2021 14:31:07 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id r5sm2911815oiw.20.2021.12.06.14.31.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:31:07 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, tglx@linutronix.de,
        agross@kernel.org, quic_vamslank@quicinc.com, robh+dt@kernel.org,
        maz@kernel.org
Cc:     Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        manivannan.sadhasivam@linaro.org
Subject: Re: (subset) [PATCH v6 4/5] dt-bindings: clock: Introduce RPMHCC bindings for SDX65
Date:   Mon,  6 Dec 2021 16:30:58 -0600
Message-Id: <163882985136.2324147.14024775338773390117.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <91c10dde568098027833dfcc310748a92a90387e.1638402361.git.quic_vamslank@quicinc.com>
References: <cover.1638402361.git.quic_vamslank@quicinc.com> <91c10dde568098027833dfcc310748a92a90387e.1638402361.git.quic_vamslank@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 1 Dec 2021 16:21:34 -0800, quic_vamslank@quicinc.com wrote:
> From: Vamsi krishna Lanka <quic_vamslank@quicinc.com>
> 
> Add compatible for SDX65 RPMHCC.
> 
> 

Applied, thanks!

[4/5] dt-bindings: clock: Introduce RPMHCC bindings for SDX65
      commit: aa848c8ee8915b2a8c973d90f1c7f8e96d17fd25

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
