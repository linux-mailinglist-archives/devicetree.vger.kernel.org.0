Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E71E33632FF
	for <lists+devicetree@lfdr.de>; Sun, 18 Apr 2021 03:54:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234904AbhDRBy7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Apr 2021 21:54:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230339AbhDRBy6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Apr 2021 21:54:58 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A103AC061760
        for <devicetree@vger.kernel.org>; Sat, 17 Apr 2021 18:54:31 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id k23-20020a17090a5917b02901043e35ad4aso18427019pji.3
        for <devicetree@vger.kernel.org>; Sat, 17 Apr 2021 18:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=SbmkNJObxP9556wdW+xlQaE/Mp8r2OHG8tzhh7P27Xs=;
        b=LhKV87qH3gAOImsHtS8QBPR1qLMUI4TzeYbUJi0VIMueON/LYIs1FZtncqgfHHMYEN
         Wr4NoLqKLHgSEhbIHZK6XBXuuE4BMDE0QZxOfabkvABV0G9fZQ2Z8uEYd94VZpFThHbm
         uGH0PihCTwxkuhw2y+zXOMbtHEfPsP7RdaLNo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=SbmkNJObxP9556wdW+xlQaE/Mp8r2OHG8tzhh7P27Xs=;
        b=AanRLPePW26BqvPgQx5w1OBZpakCf8F4IVDrk6JkMzhO7iYTF9KEJU0/os3munDF0X
         nGr3ljBvyUAHUdqYdJ+89hyOsrqqYGjCoPdM7yGbGu7uvmSHo2hrSG61G6cR20gMDnQ+
         4rfs/U6NGWMA3WEOADim73zKIeqWiGi6LI4U3+ZvttclLrrb/AcyPSYSDvZGst5MNVEy
         ctRjpz18WX0DZ/Za4BFzHDTVniyU6j8nYJ5ojCtrQ/j9UxiA2faaKyA0Xzv0kaewowbG
         VphO7qq9Sojln8S/rj4br37YQwObpw+NvN7hA8wohKAFXnGQm7lGIIVFc6kNltHVbtwM
         0vag==
X-Gm-Message-State: AOAM531jzOoEVDgJ8GkGgH5cKUXffHDuehTRbYThN1knzM/sdXZdbEMe
        alqc9AtXc5WY/o6uPO6gvIh1WQ==
X-Google-Smtp-Source: ABdhPJyemFBIhm9Dndl7HZBNNf1HHGiN+9UjdhBbcR/ZeXECMvMKe2/UdI9Wmi8AF9bqnYYeHjfsUA==
X-Received: by 2002:a17:90b:1b0a:: with SMTP id nu10mr17597498pjb.118.1618710871167;
        Sat, 17 Apr 2021 18:54:31 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:201:e47c:5232:82d9:6d3f])
        by smtp.gmail.com with ESMTPSA id a16sm9039400pgl.12.2021.04.17.18.54.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Apr 2021 18:54:30 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1618574638-5117-2-git-send-email-sibis@codeaurora.org>
References: <1618574638-5117-1-git-send-email-sibis@codeaurora.org> <1618574638-5117-2-git-send-email-sibis@codeaurora.org>
Subject: Re: [PATCH 01/12] dt-bindings: soc: qcom: aoss: Drop power-domain bindings
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     rjw@rjwysocki.net, agross@kernel.org, ohad@wizery.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, rishabhb@codeaurora.org,
        sidgup@codeaurora.org, Sibi Sankar <sibis@codeaurora.org>
To:     Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        mathieu.poirier@linaro.org, robh+dt@kernel.org,
        ulf.hansson@linaro.org
Date:   Sat, 17 Apr 2021 18:54:26 -0700
Message-ID: <161871086661.46595.17217922888505535304@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-04-16 05:03:47)
> Drop power-domain bindings exposed by AOSS QMP node.
>=20
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
