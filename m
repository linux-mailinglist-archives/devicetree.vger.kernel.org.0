Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C2D1501F6F
	for <lists+devicetree@lfdr.de>; Fri, 15 Apr 2022 02:03:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239663AbiDOAGH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 20:06:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237277AbiDOAGH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 20:06:07 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3287972DA
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 17:03:40 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id b188so7052289oia.13
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 17:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=++6zWDjlF8n3LQeDDeUqzEREnbWP/OwlrXrG0bJl48M=;
        b=Iha1t3xwyBxNB8suX4l8dG0IGCz7EQimmVo/O+G4+dUpKXdjn+b319Lm+m55eXShJr
         p3hxuECqIKk+pySQSKKI8e/9d84ZSiS+1YtVnAv8fwFf6V0yTSOynguuWbyS7WxF91bc
         mqm3EUfVSTc9myCr8jFZf0/C97xbXMC+DzC04=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=++6zWDjlF8n3LQeDDeUqzEREnbWP/OwlrXrG0bJl48M=;
        b=xFbZmK3/sCY40XetCNQY51puK5rQMyJ+Ecx/sBXyJeveBYT685xgQInOawRsvIqZDJ
         nn5g/dQ/td6Gqm0g6lOetV4KGg53tEKPeUFWGUrS41CX5/jMHQx4D6PysDXnODSQDVmu
         EsB52MuqMLyi7yW/wzcWn6hBVYH6rzT/TCoKleWGVUSO4LlpOA5fwA+WrfWZzrAIP3LT
         0DT/XGeHJLtw9NAO+wcDQ5zGCHnXa7IJzXkabrPIRoxcgwY1is7rIrOSMNuT85Q1wF+D
         olKsKCrLiR2OJHVec9ADCPct/+25Ygr+1qnMsRZKf0KqxvG2DfvQhBB6DWvQvRQKqe3O
         gdJA==
X-Gm-Message-State: AOAM532CbpDw8IiGCkADaoFYnw/uBc6QOcmpmqTPkyH8m+0Ym6MkZNyY
        +Rc5jDiSqFQLz4aUTHNuAzJVSfL/buk67QSYNUcKvw==
X-Google-Smtp-Source: ABdhPJz298rmy2F1PAP6JljrlPiNntN82KA41s56sbWpY/ZjdQaM5Lt8Veg0Dtd2h9lGRyxSyUiiwCD9MUa/uAu3sXc=
X-Received: by 2002:a05:6808:10d4:b0:2fa:5fa6:e9c4 with SMTP id
 s20-20020a05680810d400b002fa5fa6e9c4mr468332ois.193.1649981020119; Thu, 14
 Apr 2022 17:03:40 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 14 Apr 2022 17:03:39 -0700
MIME-Version: 1.0
In-Reply-To: <1649944827-6455-2-git-send-email-quic_srivasam@quicinc.com>
References: <1649944827-6455-1-git-send-email-quic_srivasam@quicinc.com> <1649944827-6455-2-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 14 Apr 2022 17:03:39 -0700
Message-ID: <CAE-0n53GoyLAJLEdcpzWPtWLpsZ1rdn9rdSVyprzQhb-XBHgdw@mail.gmail.com>
Subject: Re: [PATCH v10 1/2] arm64: dts: qcom: sc7280: Add pinmux for I2S
 speaker and Headset
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, bjorn.andersson@linaro.org,
        devicetree@vger.kernel.org, dianders@chromium.org,
        judyhsiao@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_rohkumar@quicinc.com,
        robh+dt@kernel.org, srinivas.kandagatla@linaro.org
Cc:     Venkata Prasad Potturu <quic_potturu@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2022-04-14 07:00:26)
> Add pinmux nodes for primary and secondary I2S for SC7280 based platforms.
>
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Co-developed-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> Signed-off-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
