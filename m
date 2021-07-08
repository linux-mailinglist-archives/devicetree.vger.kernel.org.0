Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DFF83C1BF7
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 01:22:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229670AbhGHXZj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jul 2021 19:25:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229632AbhGHXZi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jul 2021 19:25:38 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2828CC061762
        for <devicetree@vger.kernel.org>; Thu,  8 Jul 2021 16:22:55 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id 75-20020a9d08510000b02904acfe6bcccaso7547212oty.12
        for <devicetree@vger.kernel.org>; Thu, 08 Jul 2021 16:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=erPEQ5qusFdUetma23ocZGx6VyJVWOGasdNhx9ZlPas=;
        b=bbkWaV/PVCApTEkLGIr7Q6qml+NjjkYBHxxln82BTmc9cUbq9U+InpMo+ndTTLI3re
         WL7Wm7LTmXSpuVv4gxUVcRuj5nSDvJsiyxWOIsevLHq2HUmjbY2xoSTbSTrwGzGaqCrP
         GtK3nYsSsgjONgyB6ATgfpYs96JQF0wQPjR38=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=erPEQ5qusFdUetma23ocZGx6VyJVWOGasdNhx9ZlPas=;
        b=sdeTFe3nFdgQs7s6/341tfCzUNpp0bjip4sslbzLNWWcvv9E1PWgJDd9Lq4jwXClgs
         AbsmVMQ+jRsqP1ytB5uJKz+Puyl5UKbfyJP7DGpfmlAzwULqKFYXRByt/rsfZFuErQdg
         iihTUX+tRrz6imc1lC32yX4g2YUFusUafZoQi/GysZ95ny/FUY7nPGRdlLyl7ujdgoL9
         bvMPui0gPjRvcIoAcldXVBnsh8nlsf8DlpRioChPo9R/mCIfsbNbiAsjUDtuH/3xCyGw
         cHoqwh0B0jWIYGsaBr2Z8wtmXceXUH/d1r5IgojA7P06k9w3etcSemtrC5BtyQFYERSh
         ybGg==
X-Gm-Message-State: AOAM532fI0dKLzGPdOSfS8FNXiQG5LEaI76jRTgkhhfI1b0/6t56jQ6r
        evcwe2N2Fs/ZEc3wBAfopWtgZmAVFrTngclDGhXuYw==
X-Google-Smtp-Source: ABdhPJwzNo2G5Ic4IAhAIUd0OQNH7pT10e/9fRFyYaiHj2yruNoCtHSEn6HGIP/M+B0rBbuqWBW4dXscBlQUrVRZXuM=
X-Received: by 2002:a9d:8c7:: with SMTP id 65mr26143667otf.25.1625786574524;
 Thu, 08 Jul 2021 16:22:54 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 8 Jul 2021 23:22:54 +0000
MIME-Version: 1.0
In-Reply-To: <1624015734-16778-2-git-send-email-okukatla@codeaurora.org>
References: <1624015734-16778-1-git-send-email-okukatla@codeaurora.org> <1624015734-16778-2-git-send-email-okukatla@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 8 Jul 2021 23:22:54 +0000
Message-ID: <CAE-0n51btkt9ehEFrm+WucP90ZufKw1PEQqzNGVDRy51jByXkw@mail.gmail.com>
Subject: Re: [V4 1/3] dt-bindings: interconnect: Add EPSS L3 DT binding on SC7280
To:     Andy Gross <agross@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Odelu Kukatla <okukatla@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        devicetree@vger.kernel.org, evgreen@google.com,
        georgi.djakov@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Cc:     seansw@qti.qualcomm.com, elder@linaro.org,
        linux-arm-msm-owner@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Odelu Kukatla (2021-06-18 04:28:52)
> Add Epoch Subsystem (EPSS) L3 interconnect provider binding on SC7280
> SoCs.
>
> Signed-off-by: Odelu Kukatla <okukatla@codeaurora.org>
> ---
>  .../devicetree/bindings/interconnect/qcom,osm-l3.yaml          |  9 ++++++++-
>  include/dt-bindings/interconnect/qcom,osm-l3.h                 | 10 +++++++++-
>  2 files changed, 17 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
> index d6a95c3..9f67c8e 100644
> --- a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
> +++ b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
> @@ -18,12 +18,19 @@ properties:
>    compatible:
>      enum:
>        - qcom,sc7180-osm-l3
> +      - qcom,sc7280-epss-l3
>        - qcom,sdm845-osm-l3
>        - qcom,sm8150-osm-l3
>        - qcom,sm8250-epss-l3
>
>    reg:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 4

Can we base this on the compatible string so that only sc7280-epss-l3
requires 4 items? and then the others require 1 reg property?

> +    items:
> +      - description: OSM clock domain-0 base address and size
> +      - description: OSM clock domain-1 base address and size
> +      - description: OSM clock domain-2 base address and size
> +      - description: OSM clock domain-3 base address and size
>
>    clocks:
>      items:
