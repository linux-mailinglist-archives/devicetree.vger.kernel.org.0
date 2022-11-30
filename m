Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A5E963DBA5
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 18:12:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230506AbiK3RM1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 12:12:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231357AbiK3RML (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 12:12:11 -0500
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72F241E711
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 09:07:47 -0800 (PST)
Received: by mail-il1-x134.google.com with SMTP id h15so3243803ilh.12
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 09:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hwbeRXDCPnkzZaLAZJzPCmUQXCGZT3CgoSXNyHRIbL4=;
        b=UTV414O5U/PBfbN3sot40dFRdr29nsiDpH7mW9CHhEHTz8HwPQZW0ntrlp03S2Z5Qd
         1lk+QJLhVEOQ7huOtOn8tc8jPC7n4Lakg01Cums/GaXHAJMooFd0fElMdwoRORoqpE+y
         VkP609mtJ+dEoFK7lXPFDJ1qYJam84wIP5Z3k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hwbeRXDCPnkzZaLAZJzPCmUQXCGZT3CgoSXNyHRIbL4=;
        b=rVR7YqIpYDkDA2poSK71XwaxI2xCSbEHHbBCoKUqXKChgUS0+PW6sHeHVf+2thmfJJ
         H4j7C4hg9zTZcMnv7DbERUFvk+xp17R1cwDBV1eEtKQ4EBK4vqcOBGVkEQIZW9Brs/P6
         A87bOQp99NRmbaGuzgsYxF1wNf6S1COd9Fykj5+htsMO05qpKh0zdeGSemZO6EzewlyL
         zAsKfIDSkEbTbgr0Y7pSdynk4w7yJ3WBlU3T84Y41eETjCykU43tJQzuqlEoP7XnkEP2
         /EqLhpm+C8ck3BWN47hx3szmsLuQZojxxw7+yKnOXE8vy1J2LzfBodUQ+VzTp6qfzQVE
         rKSA==
X-Gm-Message-State: ANoB5ploW5EP+Yfyh+x0Nn47Ew79OGkKfsmKeaSjHopE/oFgpyCPDzrC
        SkUwhz3FNEpsVyKJaU71gUMtpQ==
X-Google-Smtp-Source: AA0mqf7dRZ5ikRklhhLf4zCW66fwPUUtbqqE8HBiPfnHONAIRVgwN8feEkWTFgnbGzVdaW1H68FZGg==
X-Received: by 2002:a92:dd82:0:b0:2f6:52ad:27e2 with SMTP id g2-20020a92dd82000000b002f652ad27e2mr19252287iln.285.1669828066772;
        Wed, 30 Nov 2022 09:07:46 -0800 (PST)
Received: from localhost (30.23.70.34.bc.googleusercontent.com. [34.70.23.30])
        by smtp.gmail.com with UTF8SMTPSA id j193-20020a0263ca000000b003717c1df569sm736403jac.165.2022.11.30.09.07.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 09:07:46 -0800 (PST)
Date:   Wed, 30 Nov 2022 17:07:46 +0000
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org, quic_plai@quicinc.com,
        bgoswami@quicinc.com, perex@perex.cz, tiwai@suse.com,
        srinivas.kandagatla@linaro.org, quic_rohkumar@quicinc.com,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, swboyd@chromium.org,
        judyhsiao@chromium.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ASoC: qcom: lpass-sc7180: Add maybe_unused tag for
 system PM ops
Message-ID: <Y4eN4utrDnEnKu/8@google.com>
References: <1669726428-3140-1-git-send-email-quic_srivasam@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1669726428-3140-1-git-send-email-quic_srivasam@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 29, 2022 at 06:23:48PM +0530, Srinivasa Rao Mandadapu wrote:
> Add __maybe_unused tag for system PM ops suspend and resume.
> This is required to fix allmodconfig compilation issue.
> Fixes: c3bf7699747c ("ASoC: qcom: lpass-sc7280: Add system suspend/resume PM ops")

This is incorrect, it should be '2d68148f8f85 ("ASoC: qcom: lpass-sc7180: Add
system suspend/resume PM ops")'. I see you fixed that in v2, but this patch
has already been applied ...

Srinivasa, it seems a similar patch is needed for commit c3bf7699747c ("ASoC:
qcom: lpass-sc7280: Add system suspend/resume PM ops"). For that you could use
SYSTEM_SLEEP_PM_OPS() instead of the maybe_unused tags as suggested by Nathan.

Mark, I appreciate you being responsive and picking patches quickly, it might
help though to leave 'external' reviewers at least some time to provide their
feedback :)
