Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9ABF7412A5C
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 03:39:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229762AbhIUBkf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 21:40:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231747AbhIUBic (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 21:38:32 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71FE5C122762
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 12:32:49 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id x124so2677540oix.9
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 12:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=RcfKZ8RQR7lkEDrRbmC3NNXvVvlQ4D4N2QPf10IkPsk=;
        b=VIWhZSszUjwNbxpn1xKTaTCO8/eniwjzjZNSj9/SrcvTosNfs1c+KEAtHJ4aiAulyh
         TSuSJ5ukOh0Dxqvn7SBlOsx1xNi/uKN4o0X+G08X/e+YM7hcASjH6n25jzrpmpokcp9E
         dTAMQOvhKeFnwFTLyaBDEm2aDiLrBSmtCqXYE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=RcfKZ8RQR7lkEDrRbmC3NNXvVvlQ4D4N2QPf10IkPsk=;
        b=1i9/xxtUnvhPLPtGcAbq3CfAX0e++AoBeQ2Ln1h0loRGdDyKbjdo7CGg9Lb0ld6RVV
         4i7proPgLG3uMJAWQiAvc08oCiQmqdjXOMtfnKzsXtO5N2YsLiCA6wAh12lmYWgnNk7R
         282MIzJG3VLhtN51/jMvDwOd6z0huH83g5MluvbA+ijZ1raMBAqqWvYHEWClD4Tz479l
         9insdMf7BX9R+IwAnux3+95pPrCvLk99TcZSVoq/oPsgG1tJmPqM7sCmWgQaiTBOxAGW
         Y0FkhhCXDBEkEm4Grw0BfNMpvdjrKMqMU9w8g9Z7+BWdIF88RK7g9soMt7GFWxNdhIZo
         X4iA==
X-Gm-Message-State: AOAM533DuQcOxSvRp+N4w8HPiocoHjobbSPhQPEY/L9mi0MEen5mbFyf
        fmXofFwaWUps3MxapwLkpLohN4zhee7UmScxrICKaw==
X-Google-Smtp-Source: ABdhPJy5gNNMMyTTsHsOw5F7pEwhDmSOBb0xz/TedbZBQOomMd6+H6P35RPPrZR2q+09IXhthEvSnpFhcR2JLAAjhZ0=
X-Received: by 2002:aca:3110:: with SMTP id x16mr587519oix.64.1632166368784;
 Mon, 20 Sep 2021 12:32:48 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 20 Sep 2021 12:32:48 -0700
MIME-Version: 1.0
In-Reply-To: <1631875538-22473-2-git-send-email-skakit@codeaurora.org>
References: <1631875538-22473-1-git-send-email-skakit@codeaurora.org> <1631875538-22473-2-git-send-email-skakit@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 20 Sep 2021 12:32:48 -0700
Message-ID: <CAE-0n51Xrv54XVLJwz9ENTtOhtCKWG7WtQg2o2+SFEoru1M4VA@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: mfd: pm8008: Add pm8008 regulator node
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya <skakit@codeaurora.org>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, mka@chromium.org,
        Das Srinagesh <gurus@codeaurora.org>,
        David Collins <collinsd@codeaurora.org>, kgunda@codeaurora.org,
        Subbaraman Narayanamurthy <subbaram@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya (2021-09-17 03:45:35)
> Add pm8008-regulator node and example.
>
> Signed-off-by: Satya Priya <skakit@codeaurora.org>
> ---
>  .../devicetree/bindings/mfd/qcom,pm8008.yaml       | 24 ++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml b/Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml
> index ec3138c..de182f8 100644
> --- a/Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml
> +++ b/Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml
> @@ -45,6 +45,10 @@ properties:
>      const: 0
>
>  patternProperties:
> +  "^pm8008[a-z]?-regulator$":

Shouldn't it be ^pm8008-regulator$ without the a-z optional letter?

> +    type: object
> +    $ref: "../regulator/qcom,pm8008-regulator.yaml#"
> +
>    "^gpio@[0-9a-f]+$":
>      type: object
>
