Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB8E14E7D24
	for <lists+devicetree@lfdr.de>; Sat, 26 Mar 2022 01:22:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229773AbiCZAHG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 20:07:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229975AbiCZAGx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 20:06:53 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0060E1C552F
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 17:05:17 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id k25-20020a056830151900b005b25d8588dbso6635709otp.4
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 17:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=qjeDSMxPHLhwhm9GfWiU1CRORUcVuYIFjOuSPrwZ6GI=;
        b=Bga6tcRLkL+e4HV1/Dl0fJEww+TcBYQP6EMfTNzT46ZPkVjU876OSFxHzt5QqP/vj8
         jD9CN+v7u5+I9EFrt9e9mpxaEnOf2TUaPY1ZygZ/VI5yUByKElysjrVbQR2TLp21ZKVg
         vMMCrYkzdwlmgAzuQBrq78s1K6IC4YRHSezdQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=qjeDSMxPHLhwhm9GfWiU1CRORUcVuYIFjOuSPrwZ6GI=;
        b=yikxY8vifkSeccabqc9ubsO0CXGif7wZ16BtWZ3CQYtYZjwT2TBBc0Imv6kOCYMSwg
         sie5l6KYYainhpjd1XYl1OUzH+kc/Z+vu8IyUCYXngolicuzAMGY6dilcelBKlxP6k5j
         9IvGIZiQNiH1bGLydV4uWRRj/f5AK/WJpi0CZrsx/CkhjYYox6cDi0yxlIgYo3QxgmaS
         xmMn08Ios0xCdcydIhWNfoSsBS9q5UJbOSw+qaJojbdOAVbnfSJTngFOd2WpFWxBi5xJ
         7jf4wxLpO/zwbdaryXn29t6LkAP/gXnVQICelogXIlcXGb44sTy9CKtlOu4M0ay8UFY5
         J1OA==
X-Gm-Message-State: AOAM530JxhGqvxKAsukf/GUxjs1MXTO0fHU9oh+STzRxJL6eFvs+8Bn3
        aRGnfAI033QeLXeNTATgMOzzLNeygnQYWAKxXQELAw==
X-Google-Smtp-Source: ABdhPJwna4v6hnDWtZyUf+3qkEmJHd8+Rv9/vLZRq3hDtnF/a8HX/eIq5hVn0Pdgz6xMqUp6IZOsQo+qyKP+VsMVajk=
X-Received: by 2002:a05:6830:61b:b0:5cc:e44:7dc3 with SMTP id
 w27-20020a056830061b00b005cc0e447dc3mr5552158oti.159.1648253117386; Fri, 25
 Mar 2022 17:05:17 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 25 Mar 2022 19:05:16 -0500
MIME-Version: 1.0
In-Reply-To: <20220325220827.3719273-9-gwendal@chromium.org>
References: <20220325220827.3719273-1-gwendal@chromium.org> <20220325220827.3719273-9-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Fri, 25 Mar 2022 19:05:16 -0500
Message-ID: <CAE-0n52vsBFTvPzykWAA9uVcbUho3fxTmFFpGNBPumK3HnQvYw@mail.gmail.com>
Subject: Re: [PATCH v3 8/8] iio: sx9360: Add pre-charge resistor setting
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        robh+dt@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2022-03-25 15:08:27)
> Add ability to set the precharge internal resistance from the device
> tree.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
