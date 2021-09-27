Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77ED841A0C1
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 22:54:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237206AbhI0U4M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 16:56:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237218AbhI0Uz5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 16:55:57 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87769C061288
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 13:54:07 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id x33-20020a9d37a4000000b0054733a85462so26171055otb.10
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 13:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=H/1gZtc1poDY8bi7y1uCSE4LwRoLuhavbBlTDBIZBIs=;
        b=OS/9OXvdxz2u/sAdEd9Um2VSv1Or5L6pwwGm8sWU2Y5gGr7IvOEKIUY8qGxra55iZU
         5UwJJsgNfhbxYFmjg/0y2mnKfOEaseOvbmLFzw/GNqELKwLeJWc8SZmOLdKHPQjVgu6A
         KXr0oYjHNuy2X5AdPIWDq0EVUXsl0Rn+A138p4ASjrOFOB2bqdVpecRG2cBccfGe1ayV
         udPCOxqtqNBYM4HlHm27pvDuMM8NGUaE/v4juspZzEfG9bcQD+oA5uXeiU8pEJTNx6O8
         t5WdLCmbxqKGWWy84hz+S75Uq8nlDEOtDyrXg1uOqN+0tZB3+iRmn449Rtb8hacXQ3y1
         /uQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=H/1gZtc1poDY8bi7y1uCSE4LwRoLuhavbBlTDBIZBIs=;
        b=GNAkZGue/2wEsu7xw3mKNA4WbgtrdzqH+C9G+Vhxz6jcVAExYzZrUtI/MJPnz0iUzF
         Oh5eaE8lA5jGICoWGqlo/WZlG0VetPJef7/crw07LaL68XxelmTQ4U5s5mlynTDXB0au
         wSyZ7+KQ0AZ780wOyW50J8/fKqF5nBiT0677mo0JY/Gnai1lsoPU0c9sxJO3vV/bSZru
         +jvM7BmRaOx58s03jeRR1RtO8UsjsUNCTaRvk8LW7bUOZtfAYCoHWW14y0Lai97G8xMX
         6V1nQpUFbJlD8JZIk5f8YPcSzNVK5LveFN7CEA2q2AENviHLUJ8kZVRtbaR5VogbMPzo
         sauw==
X-Gm-Message-State: AOAM530mWUya4TSTOkwGKQ2KHXhWSBbZKVpl3SRk7XeiR3fRlEMMZ6NL
        ApHdy0eXe2osl2Egq0aj/EJdJw==
X-Google-Smtp-Source: ABdhPJxfkuE6fsAjAJhVV9xU/JhO/XLGt0nkHD77Y4BTOBoKXpAkEhRGu0cTm6LkL/+eLLFq96zScQ==
X-Received: by 2002:a9d:734f:: with SMTP id l15mr1810307otk.4.1632776046881;
        Mon, 27 Sep 2021 13:54:06 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id z10sm4187275otq.64.2021.09.27.13.54.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 13:54:06 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     mka@chromium.org, robh+dt@kernel.org, swboyd@chromium.org,
        Sibi Sankar <sibis@codeaurora.org>
Cc:     ohad@wizery.com, sidgup@codeaurora.org,
        linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
        rishabhb@codeaurora.org, linux-arm-msm@vger.kernel.org,
        rjw@rjwysocki.net, mathieu.poirier@linaro.org,
        dianders@chromium.org, devicetree@vger.kernel.org,
        ulf.hansson@linaro.org, agross@kernel.org
Subject: Re: (subset) [PATCH v7 10/13] arm64: dts: qcom: sm8350: Use QMP property to control load state
Date:   Mon, 27 Sep 2021 15:53:57 -0500
Message-Id: <163277593826.1470888.1989839830062398875.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1631800770-371-11-git-send-email-sibis@codeaurora.org>
References: <1631800770-371-1-git-send-email-sibis@codeaurora.org> <1631800770-371-11-git-send-email-sibis@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Sep 2021 19:29:27 +0530, Sibi Sankar wrote:
> Use the Qualcomm Mailbox Protocol (QMP) property to control the load
> state resources on SM8350 SoCs and drop deprecated power-domains exposed
> by AOSS QMP node.
> 
> 

Applied, thanks!

[10/13] arm64: dts: qcom: sm8350: Use QMP property to control load state
        commit: 6b7cb2d23791c541dff2f152d9c5c2f9da065289

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
