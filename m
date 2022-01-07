Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1B64486F24
	for <lists+devicetree@lfdr.de>; Fri,  7 Jan 2022 01:54:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344738AbiAGAyA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jan 2022 19:54:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344717AbiAGAyA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jan 2022 19:54:00 -0500
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 493ECC0611FD
        for <devicetree@vger.kernel.org>; Thu,  6 Jan 2022 16:54:00 -0800 (PST)
Received: by mail-ot1-x329.google.com with SMTP id 45-20020a9d0a30000000b0058f1a6df088so5002554otg.4
        for <devicetree@vger.kernel.org>; Thu, 06 Jan 2022 16:54:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ZaO37rktJawAGRVJ7BAS8tiuBiMt1OmvNN9i/ri29DQ=;
        b=RAdm6DZWQ5g2F/aBBCCkg01lbWhvNrtc9vED4F1Ho0UmIKwjLv2uzDQ3qEEeU+Yk3f
         4ShJeZ0Ppl9m1op1RlTSkmVs+p0Ov6F44AR9mBUThQPSxDd2zixogB3uD4yOcLYqI9u9
         9vIALNx/Yr5NS4hAJw4dfF7puBne5wGydpzt6dPsjA3OXiQ39vla/wBepsEQDiXeIjlK
         Ui85JKjV5h0mpGSVdk8V6Pdri8cHQt/rwuodsuwlmtPfPk0VrpIQ6xInqo/mVI3xDTcM
         d9xLWun6sxJliEwxCB1yqDVoRhiPweHw3AT2JYlDelHEwGvRpa7eYDG19YagGVGJuN3q
         rzeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ZaO37rktJawAGRVJ7BAS8tiuBiMt1OmvNN9i/ri29DQ=;
        b=DWKO1pnc3n+q0CvpL0YT+qFI5E+8QIeeM46reTfxL2VlMtKmnspDXfbqd6YZJB6lm7
         yZo8EvOf4MycTWNJHOaiJZMvYaGNBGPuW8uMoY7sI1OexoYOV39kqntrwIE7tZeiB1Vu
         cENCS4eouqKCFvRIS4zTOalypoQpw1gfav+gMuvnCRSEUA0eZfPt6rdqucrM8UfXF/t8
         8kdJ/7lYHHixe2kpXk2+sOQTMGtLAiKxv8BAxKchLhStMTqa985tYlfOdPbaReIWEJ1c
         /UkXWS7ylwmlus5glTa3OcK86mBagDIMAvDZmTnsmOzNrA2C0K9V+kTeYZQIbasApKRI
         sJUw==
X-Gm-Message-State: AOAM530jkwpWNCkBf/+OP8QwwBWc5kLTMbKLRyv45KxaqRCsrdMG1QVB
        vYZXMn6fANw83bzCGQOdP1IxXw==
X-Google-Smtp-Source: ABdhPJyZVteF1NkP4Sbb0U2jo9U56E4id3LLp773JFeCV+mN6jG2FiJXPenLnEUwPvvVJya5XkNUFg==
X-Received: by 2002:a05:6830:2:: with SMTP id c2mr44776634otp.341.1641516839647;
        Thu, 06 Jan 2022 16:53:59 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id g22sm630920otj.0.2022.01.06.16.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jan 2022 16:53:59 -0800 (PST)
Date:   Thu, 6 Jan 2022 16:54:49 -0800
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, pure.logic@nexus-software.ie,
        greg@kroah.com, linux-kernel@vger.kernel.org, tsoni@codeaurora.org,
        psodagud@codeaurora.org, satyap@codeaurora.org,
        pheragu@codeaurora.org, rnayak@codeaurora.org,
        sibis@codeaurora.org, saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCH V3 2/7] dt-bindings: connector: Add property for EUD
 type-C connector
Message-ID: <YdePWXEwfk50S+P2@ripper>
References: <cover.1641288286.git.quic_schowdhu@quicinc.com>
 <8194777786be70073a5364fe45ba7ec684019a71.1641288286.git.quic_schowdhu@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8194777786be70073a5364fe45ba7ec684019a71.1641288286.git.quic_schowdhu@quicinc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 04 Jan 03:58 PST 2022, Souradeep Chowdhury wrote:

> Added the property for EUD(Embedded USB Debugger) connector. EUD
> is a mini usb hub with debug and trace capabilities and it has a
> type C connector attached to it for role-switching. This connector
> is attached to EUD via port.
> 

Per my feedback on the dts patch, I don't think this binding is needed.

Regards,
Bjorn

> Signed-off-by: Souradeep Chowdhury <quic_schowdhu@quicinc.com>
> ---
>  Documentation/devicetree/bindings/connector/usb-connector.yaml | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> index 7eb8659..417d39a 100644
> --- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
> +++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> @@ -30,6 +30,10 @@ properties:
>            - const: samsung,usb-connector-11pin
>            - const: usb-b-connector
>  
> +      - items:
> +          - const: qcom,usb-connector-eud
> +          - const: usb-c-connector
> +
>    label:
>      description: Symbolic name for the connector.
>  
> @@ -179,7 +183,8 @@ properties:
>      properties:
>        port@0:
>          $ref: /schemas/graph.yaml#/properties/port
> -        description: High Speed (HS), present in all connectors.
> +        description: High Speed (HS), present in all connectors. Also used as a
> +                     port to connect QCOM Embedded USB Debugger(EUD).
>  
>        port@1:
>          $ref: /schemas/graph.yaml#/properties/port
> -- 
> 2.7.4
> 
