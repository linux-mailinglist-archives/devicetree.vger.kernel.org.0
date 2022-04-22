Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7FED50C021
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 21:07:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230438AbiDVTGm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 15:06:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230409AbiDVTG3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 15:06:29 -0400
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com [IPv6:2607:f8b0:4864:20::c33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 472C313A4D1
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 11:55:36 -0700 (PDT)
Received: by mail-oo1-xc33.google.com with SMTP id 1-20020a4a0901000000b003296ea2104eso1558667ooa.13
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 11:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=OzJwbTlQ5CJq/RrC/jGJQpBejYRhRViMdibg0uOTI3E=;
        b=mTHk9DTfYvsaJW3PRKyUsqoHdHZD4IP6/MrS4TPvAs8Hk/8KxfkDCQW4MVG51y5ZTv
         9MKmLP+X7+XkN1eBTusqAiLA+vBjALdK9n1uTzxp9aC8stEiZofN7Kyn0TxUCIVHsN4U
         VmZRZFdWSCrUHgAy+XmlECriJewFQCzWvxZHA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=OzJwbTlQ5CJq/RrC/jGJQpBejYRhRViMdibg0uOTI3E=;
        b=NRu3abD5/Q08U2OPOrzjIKI0tpcprHSYcqbSDE1T8DItG9sU2m9cgHKWJkTAkK5zDz
         9mRge3TvQ1zFylfZjb+xfYIb/vSMr0iE6tQttp7uHyVhZ3MWNVVrBhL6cmtvg1/j3psC
         aeQSe2TBeIlqljFhCwPkHYmy6DiJ1NmiXQ9dV/9zTlO9vTcnInJcJI7QQupR8MUG4fPJ
         3+taWjNBncNpXjuFfjHq8po9OLKClrmvptgIzQqmeglSgJbfqpNtScApo95cOk6Rk0q3
         Gp7lnDEbX7Ec2lSNsp4hKJxLwtiOpj9dq7BMPN4mClesQ/ogZRysnWflaOiyJ8+0EI06
         ZsHQ==
X-Gm-Message-State: AOAM533dsZzapdySoSZmj3CHzATtjzoIx86YpMTD3n4eVjniwb7qiery
        WA/jWiGpSZbdjvAs1Iy0bSjULoQ+WGGqO6C3T159KyGInrE=
X-Google-Smtp-Source: ABdhPJxybbIi1hEyAcfi/V3yEnSJipqITB3vlp/TaI8mUT8lmjCW3COZdZf3uW0sjb9k7ZQrODc2JlVXEK2EZJ8H9gw=
X-Received: by 2002:a4a:6f49:0:b0:35e:1902:1d3b with SMTP id
 i9-20020a4a6f49000000b0035e19021d3bmr1514867oof.1.1650653687684; Fri, 22 Apr
 2022 11:54:47 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 22 Apr 2022 11:54:47 -0700
MIME-Version: 1.0
In-Reply-To: <1650621734-10297-1-git-send-email-quic_srivasam@quicinc.com>
References: <1650621734-10297-1-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Fri, 22 Apr 2022 11:54:47 -0700
Message-ID: <CAE-0n520B-+QK9vxWQdRV3ChMEN1mD3fBSEY+YG9N4EvGc9wwQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280-qcard: Add ldo_l17b regulator node
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, bjorn.andersson@linaro.org,
        devicetree@vger.kernel.org, dianders@chromium.org,
        judyhsiao@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_rjendra@quicinc.com,
        quic_rohkumar@quicinc.com, robh+dt@kernel.org,
        srinivas.kandagatla@linaro.org
Cc:     Venkata Prasad Potturu <quic_potturu@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2022-04-22 03:02:14)
> Add pm7325 ldo_l17b regulator, which is required for
> wcd codec vdd buck supply on sc7280-qcard board.
>
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Co-developed-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> Signed-off-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
