Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1A1A6329B1
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 17:37:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229848AbiKUQhZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 11:37:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230482AbiKUQgo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 11:36:44 -0500
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F9C2CFA4D
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 08:36:37 -0800 (PST)
Received: by mail-il1-x134.google.com with SMTP id g7so5913005ile.0
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 08:36:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cp2GUaJ4Q+axhxXC6f2KvKPg06VkSSSruHyJ/Tswgd0=;
        b=CK+teSe8L6CR9pYTU6D/tJpcZa1FXXOXPrRcYCLyEdQr0jhYE1AlxU8IUbtfZON5IP
         jJdiaaYDssxtAdo18KG8wC2QzpNZS8LIHP9DwQ/xg1UDkEUn6Kh4qihynbX6tXY3KcBi
         UWA7VDSgg1Y9s2n7P3flwLNuh0PhDWPVm/HuQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cp2GUaJ4Q+axhxXC6f2KvKPg06VkSSSruHyJ/Tswgd0=;
        b=LBQFyi7cr9eQg2XdYYvflM5pnn9lizH17asQnKYwpI4J9meZA63lAri1bLB9qnWSib
         fjqTcfxxD0Y3uwXLDBl84f6M5O0OqvbuVLY3sPrbNX1+pM0ykNDMRQkvL0NiXH7rQUZv
         34La0pz3+B6/L5TWf1AVT/EpWFlPzBpPPGU/w6VQUJi1VY22awq3QBSS0LT7zOoHBEi7
         L3VgiSvXtc0FnMsd++/ZYx+2GvGe9J9e5ugMzs2g6HiP1DFl3k2OlsB1o7904GlvEM+s
         xW7fl0yVa9ZGTRDUNrbKdQebt5ZsyRpu1likwy8HWdS+IBIv6loTGnbU2U8QPtPe+lxJ
         057A==
X-Gm-Message-State: ANoB5pnxJT8BmaNf0BWxLDiuE7k0ZWlNttDkx6UFWuL83z6Otw0PGvRt
        nmN/ukfrTm6zWdx6ZOHEGKQBXA==
X-Google-Smtp-Source: AA0mqf4FMjBrQHyDsYVl/MrxmyHkHgvXCKjaxSVSllVw7TdnFWn/bEbZtu13JPJTQBiYzVj6VXTORw==
X-Received: by 2002:a92:d089:0:b0:302:52b7:a5cb with SMTP id h9-20020a92d089000000b0030252b7a5cbmr649867ilh.241.1669048596896;
        Mon, 21 Nov 2022 08:36:36 -0800 (PST)
Received: from localhost (30.23.70.34.bc.googleusercontent.com. [34.70.23.30])
        by smtp.gmail.com with UTF8SMTPSA id b24-20020a5d8918000000b0069e1bcbddaesm4445716ion.16.2022.11.21.08.36.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 08:36:36 -0800 (PST)
Date:   Mon, 21 Nov 2022 16:36:35 +0000
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajendra Nayak <quic_rjendra@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, konrad.dybcio@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dianders@chromium.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: qcom: Document the sc7280 CRD
 Pro boards
Message-ID: <Y3upE5FfSW+jgQXT@google.com>
References: <20221121043437.21925-1-quic_rjendra@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20221121043437.21925-1-quic_rjendra@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 21, 2022 at 10:04:36AM +0530, Rajendra Nayak wrote:
> Add compatibles for the Pro SKU of the sc7280 CRD boards
> which come with a Pro variant of the qcard.
> The Pro qcard variant has smps9 from pm8350c ganged up with
> smps7 and smps8.
> 
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
