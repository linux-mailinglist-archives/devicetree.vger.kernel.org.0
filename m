Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9764F363312
	for <lists+devicetree@lfdr.de>; Sun, 18 Apr 2021 04:02:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229870AbhDRCCi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Apr 2021 22:02:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236738AbhDRCCh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Apr 2021 22:02:37 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B383C06174A
        for <devicetree@vger.kernel.org>; Sat, 17 Apr 2021 19:02:10 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id ot17-20020a17090b3b51b0290109c9ac3c34so18430312pjb.4
        for <devicetree@vger.kernel.org>; Sat, 17 Apr 2021 19:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=6JZfpGN3qGmrk5Z58+AgVl4ZGK5/VcZIG69yaXXxkhY=;
        b=Rjew1y3WcsRimPk4idI1odoWNwW0hh9VFnmi34eya1uwbq3ioVSVcTgfbauU0nqKRX
         JUqIuRzSqLxpEgstqbJ1CVLQgBLIZAOWH/mKTjVrODVQKMKOE57Jx/kP5sN0R7ptul/X
         dJDn0OzCrgmmKqpejCIZfNhOZL9/C478Enju4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=6JZfpGN3qGmrk5Z58+AgVl4ZGK5/VcZIG69yaXXxkhY=;
        b=HvumrRIg/H/U0a71o1rm73OcqZs9xBbYXalkimtsoBQdTnMuG/Vqde7/HpkpeIJjef
         lyTpn61a8Vaey7lY6fsIZ974/yLz02o2hyn/2wFz1MX5SBGTsOcmdyaDcRy/AbexLg0a
         Nir03xzGtFQWDdYRHv0e8Zuj3Z6jselJ1Y8Q3TAVgfDuZoxK45YhQ7q0oYoKZXztLJk/
         Il10JsHGP60jXdALC5W3xwQ4Fs4SNg0lKmZFZl97QvC45D6jM92u3yoyR5NaiSyms3JM
         EJluaRW8wI9kg7y0Ym/6YMOv0IfITOGU+tQ7BNV3LO9PqKH1Cwa0Kff0/wK+DNOeBjep
         N+VQ==
X-Gm-Message-State: AOAM531hE6hZuTCf0Y6dHhhugodhxw9hRMSoRUMHo23Xy5LIHH0VOtAJ
        K/KtqpYkfLwFNySnDrCq4OrsEA==
X-Google-Smtp-Source: ABdhPJxJzNEbY3jyPg8fEjGhjoecDC/1l6a2G599k+DxTSX+Z5Ru9ld2qBte3msY7sP8exeSMDmBwg==
X-Received: by 2002:a17:902:a5c1:b029:e7:3ee0:a1e9 with SMTP id t1-20020a170902a5c1b02900e73ee0a1e9mr16751801plq.82.1618711329769;
        Sat, 17 Apr 2021 19:02:09 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:201:e47c:5232:82d9:6d3f])
        by smtp.gmail.com with ESMTPSA id n20sm3466371pjq.45.2021.04.17.19.02.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Apr 2021 19:02:09 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1618574638-5117-7-git-send-email-sibis@codeaurora.org>
References: <1618574638-5117-1-git-send-email-sibis@codeaurora.org> <1618574638-5117-7-git-send-email-sibis@codeaurora.org>
Subject: Re: [PATCH 06/12] arm64: dts: qcom: sc7180: Use QMP binding to control load state
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     rjw@rjwysocki.net, agross@kernel.org, ohad@wizery.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, rishabhb@codeaurora.org,
        sidgup@codeaurora.org, Sibi Sankar <sibis@codeaurora.org>
To:     Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        mathieu.poirier@linaro.org, robh+dt@kernel.org,
        ulf.hansson@linaro.org
Date:   Sat, 17 Apr 2021 19:02:08 -0700
Message-ID: <161871132805.46595.8756191151169964527@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-04-16 05:03:52)
> Use the Qualcomm Mailbox Protocol (QMP) binding to control the load
> state resources on SC7180 SoCs and drop deprecated power-domains exposed
> by AOSS QMP node.
>=20
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
