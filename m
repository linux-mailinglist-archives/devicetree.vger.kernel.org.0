Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F38F41A0CB
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 22:54:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237150AbhI0U4T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 16:56:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237098AbhI0U4B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 16:56:01 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63A48C06125B
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 13:54:09 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id c6-20020a9d2786000000b005471981d559so26184913otb.5
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 13:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tDdeGJOBBJPnUr7VImnSEIcCMtCi0Ce10ZXN5bmYag8=;
        b=atM9FD1vLwjuKqF62GySXevVlnqo9c+vQYnDxHviTkENroRpn+dr/wBJ6XMioj2r/h
         y2BYQ+N28ivFUzbibJbideDg2LAzovo8LBQXxUsvJs6a43cDTNOrj1E/DlXL4LbWwz9Y
         oVeLXr6SKEkLZhi3XnVHgsTCw0XYDQhy2fHo6zpN1IVt9td6sUKk6vOE6IN5CT82q5H+
         mC0x58QEWBpj4sNIY7HD0xLBHJje11R3jyl7XJoKMspASXvMUx+ia/a3nVfDeMnl/j0i
         EvfJce0uu3osOam1x6Pb+KPlTfpPbFkzxl8vSUcM3/gjLw2LjuzF8QWuAYI3XW2dsl/Y
         iiCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tDdeGJOBBJPnUr7VImnSEIcCMtCi0Ce10ZXN5bmYag8=;
        b=hfuDinDEJD+S2g0pIIZLFLPEUUnn/1WspVdhbqjcWwFYieFKve5C6g45n8oDPPjBE9
         6cPsF/wOwTHYlYdTVrusM9ta3E2P2yQGT5Pew5kquVo34+ArFY0mLpIPXYf/Vu/Ev/JZ
         e0bq9lPvd1KHzfzSc0hWWHvCtki7LCcSJ/LnmMC8RJ0irgLORaA/jOf0t47rqPoQpE7y
         QXPYt/1vhCB3Rwp6EpeCKrnhbQs6a5zNXUZUdkbkcBM2oRf9bmWszrIF55lEL0tauji8
         H7RIqIH4ExpTwtBSBQiN4WlHz6urDyDc6Phk4ipChonIAi1Fh+ZKIkv8IbzRfhgBez87
         Huww==
X-Gm-Message-State: AOAM5333Tbnn3tuFlP1phD/juXXfmjDVOA0Q7lU4jW5CJVIZCDOc64nQ
        mDoA9JMlp5FIva/t8ZWQ/d6Fpg==
X-Google-Smtp-Source: ABdhPJx9/naDlVpyGLpe7FwzuSBOEDI0VynLTTxXxV9kV7yuqsfIfcaBlRc8XBGMhyFgcBE4DmSAcg==
X-Received: by 2002:a9d:6089:: with SMTP id m9mr1880131otj.64.1632776048758;
        Mon, 27 Sep 2021 13:54:08 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id z10sm4187275otq.64.2021.09.27.13.54.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 13:54:08 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     mka@chromium.org, robh+dt@kernel.org, swboyd@chromium.org,
        Sibi Sankar <sibis@codeaurora.org>
Cc:     ohad@wizery.com, sidgup@codeaurora.org,
        linux-remoteproc@vger.kernel.org, rishabhb@codeaurora.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        rjw@rjwysocki.net, mathieu.poirier@linaro.org,
        dianders@chromium.org, devicetree@vger.kernel.org,
        ulf.hansson@linaro.org, agross@kernel.org
Subject: Re: (subset) [PATCH v7 12/13] dt-bindings: msm/dp: Remove aoss-qmp header
Date:   Mon, 27 Sep 2021 15:53:59 -0500
Message-Id: <163277593826.1470888.9821309633445465547.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1631800770-371-13-git-send-email-sibis@codeaurora.org>
References: <1631800770-371-1-git-send-email-sibis@codeaurora.org> <1631800770-371-13-git-send-email-sibis@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Sep 2021 19:29:29 +0530, Sibi Sankar wrote:
> Remove the unused aoss-qmp header from the list of includes.
> 
> 

Applied, thanks!

[12/13] dt-bindings: msm/dp: Remove aoss-qmp header
        commit: ec908595825ce84fb40e94a68b378f13c65076af

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
