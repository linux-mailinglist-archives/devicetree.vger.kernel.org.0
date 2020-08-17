Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1199247AB1
	for <lists+devicetree@lfdr.de>; Tue, 18 Aug 2020 00:51:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726754AbgHQWvD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Aug 2020 18:51:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726904AbgHQWvB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Aug 2020 18:51:01 -0400
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1947EC061343
        for <devicetree@vger.kernel.org>; Mon, 17 Aug 2020 15:51:01 -0700 (PDT)
Received: by mail-pl1-x642.google.com with SMTP id r4so8287335pls.2
        for <devicetree@vger.kernel.org>; Mon, 17 Aug 2020 15:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=SQkF1er9CI/HdoW+CwMyTYmnG8SOeqdla6TOsxwwXL8=;
        b=EVAxOV8OGoEBu6rnvdmhL7nV88zwX29yi/vbnC+n+vOBoGdfRXKTYRNxwwIeZ+BjCL
         n00zv8FJcL4GNWB1T9HqvbiknMeFsz4MVl/oKDDvDv4xSzjhGPRsrR7FG1kxoxuIVabp
         rL28hlM7qopNZnIsSx/06Xt488jLS5/+IANV4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=SQkF1er9CI/HdoW+CwMyTYmnG8SOeqdla6TOsxwwXL8=;
        b=I/vBDYKiqdLb92dCwDjblb22lwVRGMzkDVPNTyXjRi4OWSIVhpOv04ttijbyANHnyd
         mrpHNqa0x9eN8GSQmX37OUU5XruI0VdtbroAvc11kCplep2nyXlTAA8+935H1maF69Eu
         k7+Gye5/t8EyuVrHNEuajnWEO0I5X4Fc5lB5aToGdVBHaKqlTuB/GgoAZV3E1z64gUDn
         oh3gYLtAnAJQG14LnJgMeoZJ0JJojzQ9hrRI323Rxp7Ju2H/+QIa0sPHL9c9bAvwrQS0
         saKml7/UP+rdxqsn4MyDx2DzmHykDGp+C+ZjjCrDWW7Pf4Vl7HQP0E0Yi82DUag5UOxT
         pDTw==
X-Gm-Message-State: AOAM533qX91QW4LPARFVq7hgN+LsgU21g9xYAUntOyPTG47dbXBngVTs
        cf0XCvcQSDev8OXjDRCV2sEzPg==
X-Google-Smtp-Source: ABdhPJyJOVgzQkXpdtBDVbGzjM+WmdvtLlVBSbnc4J38wcBX/4/0hz901JkQfbgFaPFVLg8jtt6UJA==
X-Received: by 2002:a17:90a:d252:: with SMTP id o18mr13953355pjw.146.1597704658834;
        Mon, 17 Aug 2020 15:50:58 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:3e52:82ff:fe6c:83ab])
        by smtp.gmail.com with ESMTPSA id z23sm18201207pgv.57.2020.08.17.15.50.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 15:50:58 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200817224527.28532-1-tanmay@codeaurora.org>
References: <20200817224527.28532-1-tanmay@codeaurora.org>
Subject: Re: [PATCH v1] arm64: dts: qcom: sc7180: Add DisplayPort HPD pin dt node
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        seanpaul@chromium.org, robdclark@gmail.com, daniel@ffwll.ch,
        airlied@linux.ie, aravindh@codeaurora.org, abhinavk@codeaurora.org,
        khsieh@codeaurora.org, Tanmay Shah <tanmay@codeaurora.org>
To:     Tanmay Shah <tanmay@codeaurora.org>, devicetree@vger.kernel.org
Date:   Mon, 17 Aug 2020 15:50:56 -0700
Message-ID: <159770465685.2423498.15137387317243148552@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Tanmay Shah (2020-08-17 15:45:27)
> This node defines alternate DP HPD functionality of GPIO.
>=20
> Signed-off-by: Tanmay Shah <tanmay@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/q=
com/sc7180.dtsi
> index bf2f2bb1aa79..9f97cf5dd9ab 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -1457,6 +1457,20 @@ pinconf-sd-cd {
>                                         drive-strength =3D <2>;
>                                 };
>                         };
> +
> +                       dp_hot_plug_det: dp-hot-plug-det {
> +                               pinmux {
> +                                       pins =3D "gpio117";
> +                                       function =3D "dp_hot";
> +                               };
> +
> +                               config {

The node name is usualy called pinconf. Please use that.

> +                                       pins =3D "gpio117";
> +                                       bias-disable;
> +                                       input-enable;
> +                                       drive-strength =3D <2>;

My understanding is that drive-strength doesn't do anything when the pin
is input. So this line should be removed.

> +                               };
> +                       };
>                 };
> =20
>                 gpu: gpu@5000000 {
>
