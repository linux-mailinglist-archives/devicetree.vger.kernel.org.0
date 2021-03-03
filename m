Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9ACFC32BFC5
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 01:00:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1579209AbhCCSam (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 13:30:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237383AbhCCIQc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Mar 2021 03:16:32 -0500
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9E54C0617A9
        for <devicetree@vger.kernel.org>; Wed,  3 Mar 2021 00:15:49 -0800 (PST)
Received: by mail-pf1-x42b.google.com with SMTP id 201so15735686pfw.5
        for <devicetree@vger.kernel.org>; Wed, 03 Mar 2021 00:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=GTl72NabGi/IKpwlgFnK8VxUBIaVwPwtxb0HRt0N0tM=;
        b=bqQ18CjlBrGl8T5bZD8lHCg75fqppP0zhYH4O0zoPbiUP9pTm/+5ANgTRVM69yBWI0
         ZvsdBu2AqL0K9KW87nWY7c5xG/B0GRfU/nVUMfBBEwfwPez0+lqvVFxETsCY4/p5ugJG
         l2hk1yi8qcbUXcEw9yC5QFNF0Jq+V1GK9O4Y4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=GTl72NabGi/IKpwlgFnK8VxUBIaVwPwtxb0HRt0N0tM=;
        b=TdDbNcpM4khTd5yk4oZuPciSXjxaNuwb2nQ88Pf1c4IriYu3y4y9FdNgVZy2EDDvkQ
         pqbLiU6W/jd9OGkPIn0asxNE5sAOFOSKETrHtGyyCzPmYqgt54NU2MJd1oYUxBVGUiQ7
         96MRwDtYv+bW+1PweDFFfpwhsuZpRdJ6TWynJFW0TN7IpEnIYJBY2/fjMuBbuxG0yXk5
         DblsetLHpmg3Z8MuSzZbIm6bSrR8WS7U48UUE3R50HSez+kqU3+1lu8knXiLS1QyLe7y
         PbcAMwQO05sqkakTkuGiy66aRLGT5KJHzmgBEXla2PwqhbCE4ZfyoBASA0UZpwlD1B8A
         9y1g==
X-Gm-Message-State: AOAM53263B30tXts2x91kGe0pqxRRfT0VIPnMGXVUqpv7ZxzQp+kLrCV
        5J9EGLd63DZppmuTOBFjQD7qyw==
X-Google-Smtp-Source: ABdhPJzA9BCElwlRBD6UFaqEd1DNz3mMFtTjw1FrL9+ZLbCPHQ5AcOFYFyPXKn3SjWn4TnQsVe7AwA==
X-Received: by 2002:aa7:8a11:0:b029:1ee:42d8:a8f5 with SMTP id m17-20020aa78a110000b02901ee42d8a8f5mr7209909pfa.5.1614759349450;
        Wed, 03 Mar 2021 00:15:49 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:2510:ab07:78a:7d78])
        by smtp.gmail.com with ESMTPSA id f3sm23102706pfe.25.2021.03.03.00.15.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Mar 2021 00:15:49 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210301133318.v2.8.I80c268f163e6d49a70af1238be442b5de400c579@changeid>
References: <20210301213437.4165775-1-dianders@chromium.org> <20210301133318.v2.8.I80c268f163e6d49a70af1238be442b5de400c579@changeid>
Subject: Re: [PATCH v2 08/13] arm64: dts: qcom: sc7180: Remove clock for bluetooth on Trogdor
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     Rob Clark <robdclark@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Venkata Lakshmi Narayana Gubba <gubbaven@codeaurora.org>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Date:   Wed, 03 Mar 2021 00:15:47 -0800
Message-ID: <161475934760.1478170.16764959964880020501@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2021-03-01 13:34:32)
> From: Venkata Lakshmi Narayana Gubba <gubbaven@codeaurora.org>
>=20
> Removed voting for RPMH_RF_CLK2 which is not required as it is
> getting managed by BT SoC through SW_CTRL line.
>=20
> Cc: Matthias Kaehlcke <mka@chromium.org>
> Signed-off-by: Venkata Lakshmi Narayana Gubba <gubbaven@codeaurora.org>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
