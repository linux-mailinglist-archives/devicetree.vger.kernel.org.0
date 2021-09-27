Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64ADD41A0B7
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 22:54:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237140AbhI0Uz6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 16:55:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237143AbhI0Uzs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 16:55:48 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7946C061777
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 13:54:06 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id r43-20020a05683044ab00b0054716b40005so19289479otv.4
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 13:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CcbTnFMkK4SUt9SM19RFSE4qtQlYRc5S1R8rKkOEREg=;
        b=Gi7uCoVnUx/LO/jAW+68xaGlZHbxNk4+P7uKBIpXdngGI8oDmHhyKpUDPmHK2USFi0
         oASbZBBz8ta18tEDtVLB1QuNSBuHDakFf9L8MjBCgZk/Bq77wKd+IaDUL+BrSExXvFvp
         N7XkuMeP1XOn/NVj4q4FA3OdF0rycWMpTVxrK04QH8AVABbWQwq6yvOKo4sAQXpkHBXJ
         lxtQOUROZHDv1Su3W33tydJVx2JqYr/uUdmNBppxH6p1KzWnoaH9qoVKPzd6cYdBehqP
         T/3pR8k3+8bd4vzW5iC98bYZmPCneLHqWMpRXPfQDXCvkT4U4tKlPAs35GfdSNdEwsWl
         pQ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CcbTnFMkK4SUt9SM19RFSE4qtQlYRc5S1R8rKkOEREg=;
        b=jnjmjY7lg6z69ckrGDJLKWlwMcNQ24Mmj15lx2hyYvj3fzO1alCupzmuWHC7S7KXRr
         vibgNm/alPkZK+oPNNoJ3tngf0uPA+d498fvle/JdYqaUmYaE3PLsb69V3LagWM2f30R
         VgqlVojwKanwOtnk0lpSJ6FESVmyZjPK/5UruFaDMNoe3n/bSp+TGdXhHGrEY+APt5t7
         h7TzsuOAl1zv484jvM0XIpGmNHRvLUSeihYcA5VITXv5mJ7YrdMTELGZNepAP5G9C14A
         Uh7PHJ7m/HeiaKPTIjzmdKMoQujLRCbA7FoLdpqvvV6rzqN7qOJ4udvnsW8dAQcpalFy
         Bsfg==
X-Gm-Message-State: AOAM530XuLvsG3KDsVDGjH4gUYiQO6J5AnGiQDUKdL5OqGK6znOLeD3J
        oNgsZ/2lTx2zW6Y0qSHfLSFPuw==
X-Google-Smtp-Source: ABdhPJzuw/e1NuyevgoKu1/ZLyZqjPk04T9ipa+X8G2iHI7B+Jj7qBlRqw8eL1BLUTec5dxcv245Lg==
X-Received: by 2002:a9d:6206:: with SMTP id g6mr1850162otj.62.1632776045994;
        Mon, 27 Sep 2021 13:54:05 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id z10sm4187275otq.64.2021.09.27.13.54.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 13:54:05 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     mka@chromium.org, robh+dt@kernel.org, swboyd@chromium.org,
        Sibi Sankar <sibis@codeaurora.org>
Cc:     ohad@wizery.com, sidgup@codeaurora.org,
        linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
        rishabhb@codeaurora.org, linux-arm-msm@vger.kernel.org,
        rjw@rjwysocki.net, mathieu.poirier@linaro.org,
        dianders@chromium.org, devicetree@vger.kernel.org,
        ulf.hansson@linaro.org, agross@kernel.org
Subject: Re: (subset) [PATCH v7 09/13] arm64: dts: qcom: sm8250: Use QMP property to control load state
Date:   Mon, 27 Sep 2021 15:53:56 -0500
Message-Id: <163277593826.1470888.14711484433465736927.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1631800770-371-10-git-send-email-sibis@codeaurora.org>
References: <1631800770-371-1-git-send-email-sibis@codeaurora.org> <1631800770-371-10-git-send-email-sibis@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Sep 2021 19:29:26 +0530, Sibi Sankar wrote:
> Use the Qualcomm Mailbox Protocol (QMP) property to control the load
> state resources on SM8250 SoCs and drop deprecated power-domains exposed
> by AOSS QMP node.
> 
> 

Applied, thanks!

[09/13] arm64: dts: qcom: sm8250: Use QMP property to control load state
        commit: b74ee2d71be84837648695465ce81dfb44420b7b

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
