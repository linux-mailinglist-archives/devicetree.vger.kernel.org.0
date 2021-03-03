Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6ADD32BFB2
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 01:00:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1579192AbhCCSai (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 13:30:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1842901AbhCCIOl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Mar 2021 03:14:41 -0500
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB6EFC061788
        for <devicetree@vger.kernel.org>; Wed,  3 Mar 2021 00:14:00 -0800 (PST)
Received: by mail-pf1-x433.google.com with SMTP id q20so15713839pfu.8
        for <devicetree@vger.kernel.org>; Wed, 03 Mar 2021 00:14:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=wUWoOU42RDaUQRgBnINOK3TjMzgm4jJFMlkGac7+hJM=;
        b=besseKDVD0/72X5vEHIyIQldUQrP21NI6g+K8EFhJsh+4l3gZ/0iFDZWOHmIGzw8Yz
         wmO648VkjuiQx5lubMTk6cLsoVFBHWDXviYg2U9Q99/fHI5CAgH6XjTAjd7EyI5iyxlg
         mYMzoeii/ThoPpW+OzhlMHUu7kGQhc98kPnI0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=wUWoOU42RDaUQRgBnINOK3TjMzgm4jJFMlkGac7+hJM=;
        b=HN5KRBdZnTe1HGtx2kxElSMLTUERy/gXElPjzwYMrnRNRk1BWpjpkfEopdVGwsLAlJ
         xv2+95lbog6S29nnmzDmltSS7+P1mVuC63s42pp9jjnse7qD+ju27Z5fxjH/ka/nLfBs
         PctUfCq9vkdtCxDO7rIv+dgSPE97DF5r3vIYmFdHAj/lF8uXeKGj5XZ0xIImZwbjrwKn
         ebeCFwFZ5DDKwxWmjDyXmZG6D2KDRd2lVPIkMkEGVoQBAuqS1lm8mNkZXh+Slp5NeigN
         uPTlvmRnFb4QlaSIDDDRILqmX2o+Nkz8SUIMAaBMwZTiYfEJcleQt8/L/uywfPNd+Q+G
         ocAQ==
X-Gm-Message-State: AOAM533mxY9kZ2coDrTrx4ZHSED9ZFbjfEAh6DtmkF8a79lIIOjocZB7
        3L1XeUtFGqPA9PUr7IOT5hR/Og==
X-Google-Smtp-Source: ABdhPJwacCK6UzxWBwUK7UBjLx+1WJXa4U024sIxMGyTVhwIGytlidXCoHil9Qnw2mtpa3vQpxzvuA==
X-Received: by 2002:a05:6a00:1a44:b029:1d6:4170:ee0b with SMTP id h4-20020a056a001a44b02901d64170ee0bmr23592003pfv.57.1614759240448;
        Wed, 03 Mar 2021 00:14:00 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:2510:ab07:78a:7d78])
        by smtp.gmail.com with ESMTPSA id mm12sm5518594pjb.49.2021.03.03.00.13.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Mar 2021 00:14:00 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210301133318.v2.2.Id27e7e6f90c29bf623fa4880e18a14ba1dffd2d2@changeid>
References: <20210301213437.4165775-1-dianders@chromium.org> <20210301133318.v2.2.Id27e7e6f90c29bf623fa4880e18a14ba1dffd2d2@changeid>
Subject: Re: [PATCH v2 02/13] arm64: dts: qcom: Move sc7180 MI2S config to board files and make pulldown
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     Rob Clark <robdclark@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        V Sujith Kumar Reddy <vsujithk@codeaurora.org>,
        Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Date:   Wed, 03 Mar 2021 00:13:58 -0800
Message-ID: <161475923860.1478170.14358924571540114935@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2021-03-01 13:34:26)
> In general pinconf belongs in board files, not SoC files.  Move it to
> the only current user (trogdor).  Also adjust the drive strengths and
> pulls.
>=20
> Cc: V Sujith Kumar Reddy <vsujithk@codeaurora.org>
> Cc: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
> Cc: Tzung-Bi Shih <tzungbi@chromium.org>
> Cc: Judy Hsiao <judyhsiao@chromium.org>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
