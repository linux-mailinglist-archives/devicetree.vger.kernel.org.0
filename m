Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9E2F4B77EA
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 21:51:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236638AbiBORBe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 12:01:34 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:57548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234267AbiBORBd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 12:01:33 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E83DBC1D
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 09:01:23 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id EC2113F1B6
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 17:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644944481;
        bh=SfcsF1mVhQhwOu0M+IJzq8imoaIRW/agDsf8ihIikrI=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=uaOeYE36IWkZwEz4tJtJrw7+XeIwfSBVuqD1kO/SKTm+QYeFYQFyElWEnX8USS8vk
         vUkwwQ4WgN48ZBejPWAS7sHYXBqaklQq8rWcZOKpSwz/fwuuzomID9mWcc81Jy2Akd
         ckL7bEXyNBYFYE3q5yJyys1u4M3SRfeApkx2LsrDFqfadOKKiF6j73c8tZL6NOE87r
         BCi5/10Bu6JuJMnsxsDdHOfdVMYe7yoeOmHCii3BglSik7yVNYZ9AAoLu75f1m9l/M
         3jE/ibQj4/At1MXc8XnZjkNdCknUnZiPMQzuoyCWLiUdD8/m0TYwVF5w5n3/x8pahV
         qeFwmG1XrqiHA==
Received: by mail-ej1-f70.google.com with SMTP id o4-20020a170906768400b006a981625756so7630007ejm.0
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 09:01:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=SfcsF1mVhQhwOu0M+IJzq8imoaIRW/agDsf8ihIikrI=;
        b=rVeuq983tTSvcCruxv7VdsRoZ0Qfb6HDboYG3pgwELgMALg/uEXZcildP+5T5MevUG
         uy18W8t4avHxYrD8vJK+lwc2xZma1bmv3i6vlV6Vr4rHdYfNohuSLRIFP58VUoA1y8KZ
         WkSuDf37BRCl2TYxF+PabyduI11Q5e63RSbZQfTNZ+mTLU11ZLpUro1wJYgZ727juOtb
         xh8oNb6wKRZRLaKUszHHBLxe+gk130HBcSzwVPd4YvBV4B4YVZM6iaYuv42x/PUVfelE
         d5vf0bVi0iQIaGkCAI1YddRZmkbRNhiCxDSzg4IRCgdwtpFppk5GKI2apQDgjqNcTIu1
         J6Gg==
X-Gm-Message-State: AOAM5323bkxp/WZNQbna+f/q7lB9lsEx+sv3SDYotZRUaLJt2mxEyDYL
        XghOYQnf0dWibWu/jjcHMLy4RrX3+3QUbjnuro6nt4LtguoGTi7Tpmfkm6W6zn/oA+q6jzyLA6G
        1gz/TKimf5wXf4SBam97sf5AvXo0QzWynz2jmpDY=
X-Received: by 2002:a17:907:a41f:: with SMTP id sg31mr3642200ejc.645.1644944481582;
        Tue, 15 Feb 2022 09:01:21 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxzMQsYTFUkZkiFrj3/E6W19Nix9stJF1B8bhLbUQmhJC33R7s7pBFl+O1wg+WfY04/ukm0SQ==
X-Received: by 2002:a17:907:a41f:: with SMTP id sg31mr3642180ejc.645.1644944481369;
        Tue, 15 Feb 2022 09:01:21 -0800 (PST)
Received: from [192.168.0.109] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id fy37sm2822372ejc.219.2022.02.15.09.01.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Feb 2022 09:01:20 -0800 (PST)
Message-ID: <cce2459e-cb6e-898c-e130-e818bd427ef3@canonical.com>
Date:   Tue, 15 Feb 2022 18:01:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: dt-bindings: ps2-gpio: convert binding to json-schema
Content-Language: en-US
To:     Danilo Krummrich <danilokrummrich@dk-develop.de>,
        dmitry.torokhov@gmail.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-input@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     linus.walleij@linaro.org
References: <20220215165113.52659-1-danilokrummrich@dk-develop.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220215165113.52659-1-danilokrummrich@dk-develop.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/02/2022 17:51, Danilo Krummrich wrote:
> Changes since v1
> ================
>   - binding as separate patch (driver patch will be sent outside the scope of
>     this patch series)

Bindings patches are not a separate series, but a separate patches
within the series, so driver should be posted here as well.

Best regards,
Krzysztof
