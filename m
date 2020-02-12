Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A34AC15B1DE
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2020 21:30:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727111AbgBLUaM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Feb 2020 15:30:12 -0500
Received: from mail-pl1-f196.google.com ([209.85.214.196]:41455 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727582AbgBLUaM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Feb 2020 15:30:12 -0500
Received: by mail-pl1-f196.google.com with SMTP id t14so1381798plr.8
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2020 12:30:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=klbZzJRtrp63+BcNNs+4IaQf6cW134g8gWyKNe5vI0w=;
        b=mDvC/4ugVQT+hSPQo+iB5hhJ3oMSxIVgYp3AuZNaDIA++FbG6qHND4SL7JT4ewTw39
         P9HGKlVHABDEOVK4ZFAc4/1+lC0jTp3+7QDQS2OFt2pRYzfptj7UroCWq3yDXFRwynBx
         hRq5ZFb+TjQSBnSW6vIfAKobzDWvAwgjqKouE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=klbZzJRtrp63+BcNNs+4IaQf6cW134g8gWyKNe5vI0w=;
        b=dYNiS0WMof5e5VERFW13IYQiWJGcfNkQ2PBO3lIwosTk+tQ21P0kT9E2zOkFdPmoTt
         lLsyUTUsoAyTW66SfZCPFp9CLD9vuHZMMa1gm/LdC9YNLhJoFPoermT0ZJLB31y2g7ed
         HUSF+63ZhVr5rBh3HF4gu/c/26v/WSoZxwA6iHxys+nuxjTNbT874Gae/NygzEXD1z4e
         3GNAbhRAwcHDlR2I1XCTA1RJwC244+m4a6QZ5DXfDLDVWQ7vUxDWd0Wx6X7Kmg/24ct7
         ik9345q88pxW75Pd/dZO46mvnpUdxKi56zFoXiONVaC3Z7I1rURE/FP+1bZkXXHFU15r
         vTcA==
X-Gm-Message-State: APjAAAVVPpsLCQFIYb/NNk7Eb91LkWkF5FN3jSlde0e9IWWu30qpSB9Q
        Pd9jtfGdxrCjYCZj14IysDAADg==
X-Google-Smtp-Source: APXvYqzbm7lMMycR9Hm99sGxJO5X6UOX1aS8l+xlX/gNeH3xuHpjlcciKobiR0HyFx7nUbmeZDSmqA==
X-Received: by 2002:a17:902:7048:: with SMTP id h8mr25656619plt.64.1581539411737;
        Wed, 12 Feb 2020 12:30:11 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
        by smtp.gmail.com with ESMTPSA id q6sm98552pfh.127.2020.02.12.12.30.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2020 12:30:11 -0800 (PST)
Date:   Wed, 12 Feb 2020 12:30:10 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Sandeep Maheswaram <sanm@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Manu Gautam <mgautam@codeaurora.org>
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: qcom,qmp: Add support for SC7180
Message-ID: <20200212203010.GC50449@google.com>
References: <1581506488-26881-1-git-send-email-sanm@codeaurora.org>
 <1581506488-26881-3-git-send-email-sanm@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1581506488-26881-3-git-send-email-sanm@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 12, 2020 at 04:51:26PM +0530, Sandeep Maheswaram wrote:
> Add compatible for SC7180 in qmp phy bindings.

nit: QMP PHY

> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index b39a594..8c153e3 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -23,6 +23,7 @@ properties:
>        - qcom,msm8998-qmp-usb3-phy
>        - qcom,msm8998-qmp-ufs-phy
>        - qcom,msm8998-qmp-pcie-phy
> +      - qcom,sc7180-qmp-usb3-phy
>        - qcom,sdm845-qmp-usb3-phy
>        - qcom,sdm845-qmp-usb3-uni-phy
>        - qcom,sdm845-qmp-ufs-phy
> @@ -105,9 +106,10 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -             enum:
> -               - qcom,sdm845-qmp-usb3-phy
> -               - qcom,sdm845-qmp-usb3-uni-phy
> +            enum:
> +              - qcom,sc7180-qmp-usb3-phy
> +              - qcom,sdm845-qmp-usb3-phy
> +              - qcom,sdm845-qmp-usb3-uni-phy

There is some extra churn from fixing the indentation, but that's the
fault of the parent patch and will go away when $parent is fixed.

>      then:
>        properties:
>          clocks:
> @@ -238,7 +240,9 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            const: qcom,sdm845-qmp-usb3-phy
> +            enum:
> +              - qcom,sc7180-qmp-usb3-phy
> +              - qcom,sdm845-qmp-usb3-phy
>      then:
>        required:
>          - reg-names

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
