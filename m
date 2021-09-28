Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B186641A601
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 05:20:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238795AbhI1DVp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 23:21:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238830AbhI1DVn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 23:21:43 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1650AC061575
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 20:20:05 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id w206so28363385oiw.4
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 20:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BY/5t7wTdvjVpwDuXNWwZUvcg5QReOgiRCNTnTuZFk4=;
        b=t26S2A58lxtJb9UOtXoX9vpowEkNqr/uJlCSIcATShVMnKQQA0kmcRpGwQLBylFYQr
         uI4O+4NO9B5Fvsc042saoaMWF8ioD7QoDlgUQDtFlhCl1AD4JaBkuN9PWJ+vrhq05JUA
         EcGFbwil4Tkzs9efuM9sbTivp3pZeLdgxIDQ8ID3U4M2m97HZjIwvfV9Z0B+YU4CVX0K
         zKmxZrbJ2VWjHqWJmo6XtlLLE/wCRyDAWhFnJwqVoXpqVLmP0cemFKTP/3fJ/e6CjRDg
         N1TFS+dRU/Xh+pGLAGtvx6w8oOz4c1orXLyXdz4HZ31eCtc8frZ9biktfs+SxX4oWlL+
         FctQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BY/5t7wTdvjVpwDuXNWwZUvcg5QReOgiRCNTnTuZFk4=;
        b=OSc2POVqlvG8SQ3DqW+9MSMqNsuu0/dOfA6WOOuEetQP6u7641Dpz8rroo5eWu6R8b
         c7uKVAhVs0DoFk315aP3Y2FL1Hacz7no1PUsbT/dMylITM2aEyxsKwyv1AFF9ioJSVp8
         g2zsMvJdtJYomqLMQG3QMYFzkt50RFoTWUcwFTACuY2SAxjJvrkSuoGKgV//0jQzNKba
         rrLyN6aiGUOH74mCw4aUXkGSNPewwKfAtFyW3FvWtqVd1evF4SNBWdUYpRgxyM+1if/J
         5ZgEt0+PTON4DVg+ewZoqBZkXYe8YvzpxET/qAk7Zg9q60OPULPVg0XUPzxQdE+ORcmG
         T5pg==
X-Gm-Message-State: AOAM532eUjnly+QSletyfiETPs2pkNsKvqht0ML0u/liS04EclZ466Mx
        7JHE+U4hZFqGbhZpZl68zPH+2g==
X-Google-Smtp-Source: ABdhPJwJXFE0iZAc424TD5Oabs5g+Dkyl1gE/Lj29AkoYGBfNGoI9TTSCkcjF+anL6oKIDo8Ev9qOg==
X-Received: by 2002:a05:6808:f:: with SMTP id u15mr1951100oic.86.1632799204470;
        Mon, 27 Sep 2021 20:20:04 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id t29sm280137otd.7.2021.09.27.20.20.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 20:20:04 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     robh@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        broonie@kernel.org
Cc:     tiwai@suse.de, perex@perex.cz, lgirdwood@gmail.com,
        bgoswami@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        devicetree@vger.kernel.org, plai@codeaurora.org,
        alsa-devel@alsa-project.org
Subject: Re: (subset) [PATCH v8 00/22] ASoC: qcom: Add AudioReach support
Date:   Mon, 27 Sep 2021 22:20:03 -0500
Message-Id: <163279918313.1542640.4435970499489136227.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 27 Sep 2021 14:55:37 +0100, Srinivas Kandagatla wrote:
> Many thanks for reviewing v7 This version addresses all the comments
> raised as part of v8 review.
> 
> This patchset adds ASoC driver support to configure signal processing
> framework ("AudioReach") which is integral part of Qualcomm next
> generation audio SDK and will be deployed on upcoming Qualcomm chipsets.
> It makes use of ASoC Topology to load graphs on to the DSP which is then
> managed by APM (Audio Processing Manager) service to prepare/start/stop.
> 
> [...]

Applied, thanks!

[01/22] soc: dt-bindings: qcom: apr: convert to yaml
        commit: 985f62a9a13175217978a797cd8f1f26216b2c87
[02/22] soc: dt-bindings: qcom: apr: deprecate qcom,apr-domain property
        commit: 1ff63d5465d0b0bf4e69562096b2d3ec9ff1a116
[03/22] soc: qcom: apr: make code more reuseable
        commit: 99139b80c1b3d73026ed8be2de42c52e2976ab64
[04/22] soc: dt-bindings: qcom: add gpr bindings
        commit: 974c6faf7667e551d202712470ca210c14ca249d
[05/22] soc: qcom: apr: Add GPR support
        commit: ec1471a898cca38af6b8956a83ebc1297214546f

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
