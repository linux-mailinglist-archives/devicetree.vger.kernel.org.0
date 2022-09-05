Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 970215ACD3E
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 09:57:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236366AbiIEHxr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 03:53:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236903AbiIEHxm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 03:53:42 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8D2D43319
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 00:53:40 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id k17so4800244wmr.2
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 00:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=DVlJH3vkd4vFkUWUNZjJwBOoVQFrCQAuk6RHYkEuX5Q=;
        b=Ce+5HRRvF+xrwjFtboNJwIk1JTS8aSL0DPO6VLzwNafRywarmv1gCVeNLGZfIRNqUo
         cosqmJTs62vycqubngSVUcFkLCUynXj2aFQi7iz773I9sDMlHJnxQK8R+s48rHytgyIK
         Tjiwp6MjZbJfUty07GIKsW9iixLeLZVjWcsw8vQ9TJK0cJG88zLyPnbMWGvHBxNemXf6
         3Tc4EOfi8pNOY1Id2fI4Ok9w10w2grsdS4TC4XG1qpm3jkLheqs2zautHc9DxWP0+vvk
         3e6d6cZEUpl5gvE1uf8UWIj6UpejZ/9iOitBK0srSd4EwUU/gzAaDp0/nK7PQmD8q+Vz
         OgRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=DVlJH3vkd4vFkUWUNZjJwBOoVQFrCQAuk6RHYkEuX5Q=;
        b=eqvRu45YQSCoNdwAbCTiFluVMX7zQA3eTvMXBmI67xvfKeT2xfc7CKpEqWhHJGAuIS
         RC/FGk8PagBRAhW8830aD8i9GcibR0lyz29ZnPjPKo4PqBLxWCn1GzOGGbphB9aq6brc
         LQ312yqizEyZbkQfGSSDYyQwmEAF7LZh1NU6fVVMPeexhN3/y871AhIbKzNB9d64fi2a
         9p5yl2f/kWPJ8LaaZL7NzMe7sg9b0CR+X2xHvcSfuFQeH6BPqjX4v4lv94O36qQBaDJk
         xrwDxYDAy+zo1f82QRWYrI4g2z9zGJGi/hhZPz8hN7xSnNHZfxcb21sxSoLb55ePm9ev
         iYZA==
X-Gm-Message-State: ACgBeo2hNhiy+a4cJxkGZmErLNKnsEU97nASqR3HmLvk89a9NPMg1sxd
        dXNtcNFpGwZVq/trJXxXJdm1pw==
X-Google-Smtp-Source: AA6agR7mWGEfbBcfol/wEL76UF46z6uwNeyxj39EySyk4u+dn0btrKqGspDcLuDV8CYbhZePHr6LyQ==
X-Received: by 2002:a05:600c:4e15:b0:3a6:152a:9143 with SMTP id b21-20020a05600c4e1500b003a6152a9143mr9840010wmq.20.1662364418686;
        Mon, 05 Sep 2022 00:53:38 -0700 (PDT)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v5-20020adf8b45000000b0021e6c52c921sm9932752wra.54.2022.09.05.00.53.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Sep 2022 00:53:37 -0700 (PDT)
Date:   Mon, 5 Sep 2022 10:53:36 +0300
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Amol Maheshwari <amahesh@qti.qualcomm.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Ekansh Gupta <quic_ekagupt@quicinc.com>,
        Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-arm-msm@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 03/10] dt-bindings: misc: fastrpc: Document
 memory-region property
Message-ID: <YxWrAGblpbyp7pPu@linaro.org>
References: <20220902154900.3404524-1-abel.vesa@linaro.org>
 <20220902154900.3404524-4-abel.vesa@linaro.org>
 <58608d9f-bc79-4e97-2027-e68863213aea@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <58608d9f-bc79-4e97-2027-e68863213aea@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-09-04 22:29:04, Krzysztof Kozlowski wrote:
> On 02/09/2022 18:48, Abel Vesa wrote:
> > Add memory-region property to the list of optional properties, specify
> > the value type and a definition
> 
> You should write why adding this property. Is it already used?

It is not already used, will be used for cma remote heap. Will add it in
the next version.

> 
> New properties can go only to DT schema, so first the conversion [1]
> should be finished or started from zero (9 months it's quite a time for
> a resend...).
> 
> https://lore.kernel.org/all/20211208101508.24582-1-david@ixit.cz/

Right, will try to resend David's patch after addressing all the
remaining comments on that thread. Will be a separate patch.

> 
> 
> Best regards,
> Krzysztof
