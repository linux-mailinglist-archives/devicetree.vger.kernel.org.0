Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BC7B562271
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 21:01:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236751AbiF3TAO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 15:00:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235833AbiF3TAO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 15:00:14 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 571181EAD1
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 12:00:13 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id ge10so40786984ejb.7
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 12:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=5F6t8Oak8C6GS4yU7b7+HZc9W80825eLPQomvUc1GA4=;
        b=dyrnhxUVpeKETcOXlp8V2F+2d3STsBAJgY1uvPBzCsaCmAUn6hh/Vv8szNUBeaTgP8
         EBVGfbPAYX9Q10WsbXXt/HLckIE//XCkxvOGJ/ZfwFTxP06HUO/3+/dsts3cqlgnEMCS
         vwdRNHg4JBKQnPCU4xnOAkFM7YnZb/qx24b1AmCsNoyj8nGJbVRb1s8opdArso5ltr70
         pNXIvHONzd2+T4WsAvmrQD/CKG2MR9b6zrMzrtmmWUfyfcM+KokEXt99udexRw3pKuqu
         8AlL7t7stpk0X8p0PiCRPKqmWI5ceLwKQjPmA68k73R1haJHag0mTKlk3ZyVuLDCpVbW
         wv2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5F6t8Oak8C6GS4yU7b7+HZc9W80825eLPQomvUc1GA4=;
        b=VD9jTxqNC6ny9fmjWGE89ytpKY2G6PSw069xfUylPzYYtXqP7CAZfgy3vtRnrj8J96
         etrnKU9XVy3TTIFep6p7RZFgtCP+OSfJZ9RGFdhjM4FEWWnZr7G+CvXASGBZbfd9YF3D
         lD/HZj4P+Kkgnz3BLIP7ZG5FRKerBmEmSSTLEo2okOnRhpLlo3Q1Z9rr+82t7wKcyBjt
         KAqmC4nOMpr5kYANwpenjcJ2/rorthfeSmQ/88xfpIYMLL/vlNmZ+BarrVrh8vIKi+Nd
         JQHSe/YjR5C1Mw5cA6GUAV8DfpqkTMNAavmX1oHQbbilHERInn6JZ33d6TEEms5tiO0b
         XqPQ==
X-Gm-Message-State: AJIora9iNOrkLNwpMm6uYxrnfNsnXFfE6RbrmjzHceqq04KVdCEQkbAN
        XzxL+tcnQxqp5umOu8JuIpqGhQ==
X-Google-Smtp-Source: AGRyM1vb3jf+SbscLT5vNMXLJwsUmIX3G8k1DzkfPrK2EjrWsu9bAjYRrXkbwMHvCqRLoIe2i5R3eg==
X-Received: by 2002:a17:907:60cc:b0:722:e564:eb11 with SMTP id hv12-20020a17090760cc00b00722e564eb11mr10179551ejc.736.1656615611667;
        Thu, 30 Jun 2022 12:00:11 -0700 (PDT)
Received: from [192.168.0.190] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id h1-20020a1709063c0100b006feec47dae9sm9389030ejg.157.2022.06.30.12.00.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jun 2022 12:00:11 -0700 (PDT)
Message-ID: <02b93cc4-44f0-ba93-aefc-086d9373b6b8@linaro.org>
Date:   Thu, 30 Jun 2022 21:00:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 2/7] dt-bindings: msm: dsi: Fix operating-points-v2
 constraint
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, robdclark@gmail.com,
        quic_abhinavk@quicinc.com, dmitry.baryshkov@linaro.org,
        sean@poorly.run, airlied@linux.ie, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     quic_mkrishn@quicinc.com, swboyd@chromium.org,
        bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
References: <20220630120845.3356144-1-bryan.odonoghue@linaro.org>
 <20220630120845.3356144-3-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220630120845.3356144-3-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/06/2022 14:08, Bryan O'Donoghue wrote:
> The existing msm8916.dtsi does not depend on nor require operating points.
> 
> Fixes: 4dbe55c97741 ("dt-bindings: msm: dsi: add yaml schemas for DSI bindings")
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
