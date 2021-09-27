Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1004841A36B
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 00:56:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238009AbhI0W6G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 18:58:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237998AbhI0W6C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 18:58:02 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A226C061770
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 15:56:24 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id x33-20020a9d37a4000000b0054733a85462so26552506otb.10
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 15:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RAfu6mSx1gvhstGciS1DnANdgPgJcWa9Mr3ke+FGr1M=;
        b=WtBsxuc1Az7n4cKQ/MNpJzY7BJ18HkGpP+Bq70rC5Dn5v42olmcj5Gr6EEosvTcFCy
         Yx58jCCGlqfDvxhk5ScVEi+h2VzWTzracBKeCQaAf0U9GPrx0+fZKVdd0T5fEv1iLcW/
         CeXS0jTD9s5bXqwQ60pj2r87GnsRFN/o8Zrl7+eBBnptOyVUY0FbabVVqtVLS0WYVk6v
         SAh2BD3Y/QROJpnva6XC06c/zfWkB4iukq3OIoq27zxV66Hdu/6b7sLe8wY4mYRR+kNj
         2zzxeHskrf5ARwxzz62L9TtWmVXzOARGc/l74VtWYAMBCvjVwU7LE6kJ2JsygH+2Ur9/
         bMvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RAfu6mSx1gvhstGciS1DnANdgPgJcWa9Mr3ke+FGr1M=;
        b=TXdQoRAWoqi97pnc+p0WxWoXYI5NhE6UIiqeqgOPDKEuaLYf2rxXYvti97wfHsdj0k
         0UJy/BymqEkzvrqNdwc3pBUk/qcCsA/fH/oVaJm1GPjE/px16xQHsjh2tyTXchp8QKmx
         BE+nkn5aLbKJI7VyYrMgo6sE3SayW2FYjCdeOcrcf2o2USARmlt++gTVxlrF1Nq4mLeC
         sGqbTnxGwV2IvVg88OaVHxhczzHTSrl+lQbFzOMyRkwVHwmvYy5OchA0/V2ozP7bpQtv
         UOeOh4CYZRzYv6wUk78bTamWsaiB9X7+Z4n/U2eIMhkrbucf52EZoHtGoH9fXU/QNavs
         CPBg==
X-Gm-Message-State: AOAM533fwSmLOIMICJebrBtOwbdrAANoHmWHIqzm8b7atIa5z6J5Cxaa
        yAhaWZofuzyRUKR91WN/9avFTQ==
X-Google-Smtp-Source: ABdhPJyuTgPlL/I+ZrBpv8KOWcWOi5kzO6e/aNq4SXExNs1iVIuxClFnlilxk8L2yNtY23qMAsszKw==
X-Received: by 2002:a05:6830:344:: with SMTP id h4mr2265406ote.310.1632783383552;
        Mon, 27 Sep 2021 15:56:23 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id w184sm4231084oie.35.2021.09.27.15.56.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 15:56:23 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        ~postmarketos/upstreaming@lists.sr.ht,
        linux-arm-msm@vger.kernel.org,
        Vincent Knecht <vincent.knecht@mailoo.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH] arm64: dts: qcom: msm8916: Fix Secondary MI2S bit clock
Date:   Mon, 27 Sep 2021 17:56:17 -0500
Message-Id: <163278329750.1522839.18280684643871196385.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210816181810.2242-1-stephan@gerhold.net>
References: <20210816181810.2242-1-stephan@gerhold.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 16 Aug 2021 20:18:10 +0200, Stephan Gerhold wrote:
> At the moment, playing audio on Secondary MI2S will just end up getting
> stuck, without actually playing any audio. This happens because the wrong
> bit clock is configured when playing audio on Secondary MI2S.
> 
> The PRI_I2S_CLK (better name: SPKR_I2S_CLK) is used by the SPKR audio mux
> block that provides both Primary and Secondary MI2S.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: msm8916: Fix Secondary MI2S bit clock
      commit: 8199a0b31e76d158ac14841e7119890461f8c595

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
