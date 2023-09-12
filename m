Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CC8D79DCA5
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 01:30:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236741AbjILXaw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 19:30:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231672AbjILXaw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 19:30:52 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1469C10C7
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 16:30:48 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2bbbda48904so104034321fa.2
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 16:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1694561445; x=1695166245; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TiT6xmXSdGoBaHZvckfZjy18MoIhmr9QJ20ZYjr0eBk=;
        b=jwxjtWtnNgZGQxDzXYAC6JaARkuWiqA+k1hrJNVsQWvd8C7G/ZWIzu7BkAm6/r60Ss
         JHFzXYmNd/+UkcyZQ8xqQ1nOxjxyB+kpBbda63ChSNTmBmlwOpzfn1k6JJhsc14CWJtU
         43PuDrmhDY9XddaLWfiy+CXavUyR3/ClsBhWw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694561445; x=1695166245;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TiT6xmXSdGoBaHZvckfZjy18MoIhmr9QJ20ZYjr0eBk=;
        b=Rqee3ED1lvvwBESbTXYppXssK7wMH0a0YEYLPNdVQMijyhwuNmsNVtx/jOK3D4lpjD
         N0K0RcFuD+S48TOzQscj+dz2t+gFhGVhGVGvIRbVPToY3OLqBFPr5SbF3mxz6hrhEEjw
         rf391CKzge0erK7qC1e8nkK6EYfFfmpGly7DVCnBE6GIyuLHQFwbangSvWID0vtziMtK
         RbSNOANEaFzld21VgBQYUVriQ4Ddo7TbhAF+KqfkdwHlM0hchlnVT5JzkQiodEqmgEJg
         bdOpcrttt5UWAQ1QDg4JoTNybY/aRt+tMqEBHaNQqZpdFYkk0rhQv0A94ogSq5wEi2F0
         T9Zg==
X-Gm-Message-State: AOJu0Yy2/MNRyINfgOXN+mtBvrUZ1GN7kpptWek3vLe4pk6tO3XE3sdy
        XerpzQR2tS2CeUe9fZXX8X8oPoZkuQCddTAGJt2PWA==
X-Google-Smtp-Source: AGHT+IERI3rr3CaCesY2PptENeGbQVVNtd8ZrG00DBYZxsfVvkMZQAsUeN2jhdra67OhwmGw5ClQbg==
X-Received: by 2002:a2e:9290:0:b0:2bd:1dc0:5ed5 with SMTP id d16-20020a2e9290000000b002bd1dc05ed5mr921609ljh.23.1694561444709;
        Tue, 12 Sep 2023 16:30:44 -0700 (PDT)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com. [209.85.128.46])
        by smtp.gmail.com with ESMTPSA id gt33-20020a1709072da100b009ad854daea6sm1670323ejc.132.2023.09.12.16.30.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 16:30:43 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4009fdc224dso15285e9.1
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 16:30:43 -0700 (PDT)
X-Received: by 2002:a05:600c:5123:b0:403:9d52:195f with SMTP id
 o35-20020a05600c512300b004039d52195fmr57028wms.6.1694561443510; Tue, 12 Sep
 2023 16:30:43 -0700 (PDT)
MIME-Version: 1.0
References: <20230912071205.11502-1-david@ixit.cz> <20230912071205.11502-2-david@ixit.cz>
In-Reply-To: <20230912071205.11502-2-david@ixit.cz>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 12 Sep 2023 16:30:31 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XYdvcF2mo9=-EBb4Ann1UAM1VFW61MH3yOWjyLqCJRiw@mail.gmail.com>
Message-ID: <CAD=FV=XYdvcF2mo9=-EBb4Ann1UAM1VFW61MH3yOWjyLqCJRiw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sdm845: cheza doesn't support
 LMh node
To:     David Heidelberg <david@ixit.cz>
Cc:     cros-qcom-dts-watchers@chromium.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thara Gopinath <thara.gopinath@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Sep 12, 2023 at 12:14=E2=80=AFAM David Heidelberg <david@ixit.cz> w=
rote:
>
> Cheza firmware doesn't allow controlling LMh from the operating system.
>
> Fixes: 36c6581214c4 ("arm64: dts: qcom: sdm845: Add support for LMh node"=
)
> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
> v2:
>  - moved power-domains removal from this patch to previous one, since
>    it's not related to LMh support
>  arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)

I haven't used a cheza in years, but this seems reasonable to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
