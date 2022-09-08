Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B44825B2310
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 18:05:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231752AbiIHQFF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 12:05:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231131AbiIHQFE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 12:05:04 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DFC9205DB
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 09:05:01 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id c11so22681023wrp.11
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 09:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=W8Bb70RnM7+M3BfzJDsvaPNXFgt0KDaRDT2dCnghNLY=;
        b=u9VZnK2sLRA3fAzJLvEGoYCyXEJz0ktGn67gxCsidBxbRnlDvl0tAqlUr9V2Lc9oUL
         sH49RJg3ivKn8Sya4z6kS78qW+TrI4GGBYmeuEOGPwBVoGemt7276gRkWyPZz71xN3S2
         egkdq7tGhPKiNhjgKFbFBKDqbJBfL4F8FTTUMLzleyEK0nZ6u3yGkCiBeUrzzMs6fus2
         /+lYsY+anOy2DwvV96q1vEUEKmF2TAmgab6KyUk5lrjnjHh+l1tD8Bn9QIEXDCtE+VYo
         9IVFhJZlSKwhVKnfG0YLJAGnJC8NXNi5nj81KXy7wwyLTgkVavcJyfWK0USat3d3l2N/
         nT0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=W8Bb70RnM7+M3BfzJDsvaPNXFgt0KDaRDT2dCnghNLY=;
        b=078yNmww6wYIhsVn4zxs8uZ9SbbZqSI4A8uhppWBrYU06UkvLrUylpSlTj7Ll1/Mbj
         Vr9qVBrE3u3rBg4mxb0rAcKDbML1WV9MqVb11WZ65Mrsonyz0VgFWBECK7E7TMJLKimH
         7QDFKDB7i8+twPSv4zuQsibU1qkxYMMo8yrkymRg77A6VVlsP4Lt6Py5MoTrddQxENxL
         ocDBzcDPUP5xSmPfwTfP1NCb8hjtJ5CH5sk4Tq+Dk0C8h9BYUOd5RlxjL9lui3Aj+OdR
         Km51x/SlbqLD6TxXzmK5qrgoYplmq1nyOZh/Mqhkbqjf34Luy09nosn/F3HZQlv63YGH
         /GNg==
X-Gm-Message-State: ACgBeo3gumbmUjezBftLjo8cISlbBrBHRwi4LG4CPPv10b5o4ccYTdDO
        DLTnHGSuPYFbkVxSxkUAt50Fmg==
X-Google-Smtp-Source: AA6agR5Rq/TrOYVS5sCsQ0Pk0Owlkd3Mi7wHEnFOUO1Xv0O4Z2VskjC8W4FofL7jR0QXRXovg/ryDA==
X-Received: by 2002:a5d:65ce:0:b0:228:d8b6:d1 with SMTP id e14-20020a5d65ce000000b00228d8b600d1mr5509935wrw.486.1662653099589;
        Thu, 08 Sep 2022 09:04:59 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id m2-20020a05600c3b0200b003a5ee64cc98sm3346012wms.33.2022.09.08.09.04.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 09:04:57 -0700 (PDT)
Message-ID: <0334cda1-61c8-84af-eba4-6f2f68a7cb3f@nexus-software.ie>
Date:   Thu, 8 Sep 2022 17:04:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: msm8953: add MDSS
Content-Language: en-US
To:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Vladimir Lypak <vladimir.lypak@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220906183334.203787-1-luca@z3ntu.xyz>
 <20220906183334.203787-4-luca@z3ntu.xyz>
From:   Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <20220906183334.203787-4-luca@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2022 19:33, Luca Weiss wrote:
> +				phy-names = "dsi";

Hi Luca.

It looks like the phy-names property drop will go through.
Suggest dropping the above for your V2.

https://lore.kernel.org/all/20220907000105.786265-6-bryan.odonoghue@linaro.org/T/

---
bod
