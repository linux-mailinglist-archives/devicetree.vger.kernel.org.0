Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB80B363322
	for <lists+devicetree@lfdr.de>; Sun, 18 Apr 2021 04:03:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237215AbhDRCDp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Apr 2021 22:03:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237108AbhDRCDo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Apr 2021 22:03:44 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B990C06174A
        for <devicetree@vger.kernel.org>; Sat, 17 Apr 2021 19:03:17 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id f2-20020a17090a4a82b02900c67bf8dc69so18452115pjh.1
        for <devicetree@vger.kernel.org>; Sat, 17 Apr 2021 19:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=f1vUS3Ze5rMYzhNmACo58zrebNguGquHyqBrPheUTBg=;
        b=VBWYmT8yvYUBS1tAUJPSf0RlTkrLPAHztDZl3/w6fFWXOag1I5um3pUtJWzqB2t7v/
         Eqoblslde/SkHUYf87Gmca5fUPfDdI8FzhIAxoQgGn8G2rWzTRkqQZiZxBFukRPlAdRa
         zWN0gKf4iYWjil27m3/XOVxDMNwCoY9YtbBgg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=f1vUS3Ze5rMYzhNmACo58zrebNguGquHyqBrPheUTBg=;
        b=T6aRx6bVVN9y57GbhEAeAu253ycdDvTo8V44GISrQ/1eb02Ji5VlLHNXfQjGoZcGgC
         QqQo4fdV0/Zk1C4NXGiFYe2EC+R5FWLNci0ZvBIPGz2gJAV85P/2cycR+vkcq427ueEo
         dVCk3rm3NQb6gdKA0vugYDblHuVwdXM63hlxZfqHu6Zkr4vJXCRpQHRt4c7fiB9D4NXT
         sUa0xaYvDlLy+i+qPK/w9VFdOhNwzIzTdHETDIZeiPOIl5HxQgM7oQwpc092GD5gPIpY
         fGw4HLxdEwk3cTV3lMlUdikBwgJ0M8MsKPs9scj2SQmQUMavW+ZpUbtc2CtCQYas/0F+
         Vs0A==
X-Gm-Message-State: AOAM530SahoS9tBds3DtGaOkBXURuaRtVChD6tldKtSFGQXFZu/OLbaP
        6/APJn2iFgEEttinHuR3UB9yiQ==
X-Google-Smtp-Source: ABdhPJw0TP+s+3N7xH1vp/d/mCzedautJESNhv7jJC/R0yjGnT6rJ77fGt1EMUPwWSZjbZhD6rfleQ==
X-Received: by 2002:a17:90b:ed8:: with SMTP id gz24mr16894325pjb.98.1618711397068;
        Sat, 17 Apr 2021 19:03:17 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:201:e47c:5232:82d9:6d3f])
        by smtp.gmail.com with ESMTPSA id t23sm9783227pju.15.2021.04.17.19.03.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Apr 2021 19:03:16 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1618574638-5117-11-git-send-email-sibis@codeaurora.org>
References: <1618574638-5117-1-git-send-email-sibis@codeaurora.org> <1618574638-5117-11-git-send-email-sibis@codeaurora.org>
Subject: Re: [PATCH 10/12] arm64: dts: qcom: sm8250: Use QMP binding to control load state
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     rjw@rjwysocki.net, agross@kernel.org, ohad@wizery.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, rishabhb@codeaurora.org,
        sidgup@codeaurora.org, Sibi Sankar <sibis@codeaurora.org>
To:     Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        mathieu.poirier@linaro.org, robh+dt@kernel.org,
        ulf.hansson@linaro.org
Date:   Sat, 17 Apr 2021 19:03:15 -0700
Message-ID: <161871139524.46595.11454827955816557316@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-04-16 05:03:56)
> Use the Qualcomm Mailbox Protocol (QMP) binding to control the load
> state resources on SM8250 SoCs and drop deprecated power-domains exposed
> by AOSS QMP node.
>=20
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
