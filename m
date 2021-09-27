Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE61041A0C7
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 22:54:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237228AbhI0U4R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 16:56:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237137AbhI0Uz6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 16:55:58 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FC58C061250
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 13:54:08 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id 67-20020a9d0449000000b00546e5a8062aso26173681otc.9
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 13:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jYTXXROp3aX1NMBycc9RzQt/DwugfKW9fQbKK8RPVXU=;
        b=Elq1ONDomvbqwYGRiMNWKFo38sox/+9fBdHYiS0MKytSylE2boKfeZOJIXu5SaEwV/
         vWgTl/MFejIwPfrRqBlfdNVZsrBglnvZ6jji4WnM7AglBsN+1IibLzLxdmmgg195yvUJ
         1aTdvQk+h+TnApActDXM1TspO1nxdLdW13+ve8K8wWcE9NNbLec7zyIP0cTrCPwt17Gr
         o5o85ESLYOsIbxBj5i0uSXwxsuqzZB74onnk3XKvE41zrLX6iUhYpHXHhk/zJH6y6mAD
         YQy31x0rMUo3T83ANnS8WxgR1NC6g6dXt2sRHT5fw08OF0evj9sFPzn1TCX14+Lc2GlX
         nZDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jYTXXROp3aX1NMBycc9RzQt/DwugfKW9fQbKK8RPVXU=;
        b=s9Y0cwLzBPrRB8tezRpVj+n9na+z+kKArT4XEX2geSUq/pCaVYYKbI7MW02gzvI7Hl
         8Y+5Odats7rj4NAxIuBil/I8j0xQ4Hh1m1wQnDdpFPnh4NHdH+Rfixbc/jmHfDUAWAoG
         yMdQOuo7hguJRSiyCHV0d4VrEt69Ii9NGyiwgLFgO7A/ZaURTFLHNphn6yzzSzbssz+k
         B/QvWNzOwwyKnkL0DlQaxiHNhVo7kif1URETsMQeLt4ylmbKfAXCH+T6zezndMQ35JkD
         tCQum4kw+cKkcd6UvZ/7t3oGhXdECAiJoENbrp6cvvY1ePeyPoTbZE48T40O5ASsD44L
         0/5w==
X-Gm-Message-State: AOAM532qkP7bZGBtNwoMXTL3nyCrnYSXeUz56K9JlxaHALsB0WFCyDnt
        fCFrqvY1eO8bXTK6e2aYPtcW9g==
X-Google-Smtp-Source: ABdhPJylw1hG+IliHWudtH3y6ImeBsXzTXmvhAFWa0/Y4yn708jVIqpWevArbxf+btQkP8T++8nnaw==
X-Received: by 2002:a9d:7284:: with SMTP id t4mr1760104otj.285.1632776047761;
        Mon, 27 Sep 2021 13:54:07 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id z10sm4187275otq.64.2021.09.27.13.54.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 13:54:07 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     mka@chromium.org, robh+dt@kernel.org, swboyd@chromium.org,
        Sibi Sankar <sibis@codeaurora.org>
Cc:     ohad@wizery.com, sidgup@codeaurora.org,
        linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
        rishabhb@codeaurora.org, linux-arm-msm@vger.kernel.org,
        rjw@rjwysocki.net, mathieu.poirier@linaro.org,
        dianders@chromium.org, devicetree@vger.kernel.org,
        ulf.hansson@linaro.org, agross@kernel.org
Subject: Re: (subset) [PATCH v7 11/13] soc: qcom: aoss: Drop power domain support
Date:   Mon, 27 Sep 2021 15:53:58 -0500
Message-Id: <163277593826.1470888.2234978122972156070.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1631800770-371-12-git-send-email-sibis@codeaurora.org>
References: <1631800770-371-1-git-send-email-sibis@codeaurora.org> <1631800770-371-12-git-send-email-sibis@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Sep 2021 19:29:28 +0530, Sibi Sankar wrote:
> Strip out the load state power-domain support from the driver since the
> low power mode signalling for the co-processors is now accessible through
> the direct qmp message send interface.
> 
> 

Applied, thanks!

[11/13] soc: qcom: aoss: Drop power domain support
        commit: 99512191f4f1dd4e0ad92e6f61ffe4d8a22aa3ba

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
