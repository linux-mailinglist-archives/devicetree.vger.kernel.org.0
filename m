Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E6F76D585F
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 08:02:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233586AbjDDGCx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 02:02:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233570AbjDDGCw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 02:02:52 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 805542689
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 23:02:49 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id r11so126069657edd.5
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 23:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680588167;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=er2JMkhxRrMn7IPknsoSruSu7MefX418fk0LEyaAQGc=;
        b=HWa9tlvWjfMzijk5Oj530ksFQdmYGJ+cgKeK/++r9FLUMLFBbKnhNDKarL2OvTS0j8
         Z2mDy8ga4vil46j7v2OhGzhTKdJkNYnaIEcsh5T8cNdeMSkLmez05G/HkzC5m1sUlIwH
         JOIvJwrowZgmuerL2fGbZFKoegsAPFlypqRvwiGgt7zmCwFNLKP6vVcBvDZ4ZwbMALfk
         41ycwOzkzMlMHXwfNc4vaVvQBcM3kCq4L/ugHfGogpeFzHO9w0K5+/9FNS0CwmyKPJcC
         D6MU2PJxQTrzvsopoSgqUBCbO+g9uO7XwJHYsdyBEFLimus01RrAfOn4UunZ/h/w/Am0
         IuIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680588167;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=er2JMkhxRrMn7IPknsoSruSu7MefX418fk0LEyaAQGc=;
        b=JwiG/NO9IAbaLFvcIRr4xSUIL3RWoRY97PhoygHQ9PDlZKMVN+ZxHenO5CjOQ76vsU
         beuYxej7fPtbZNwCGKBv1IzlRTceaXDLIujqSqQ+V4osSzBntyWQKw/J+MY/BxWOht8p
         p7LYajZs1w/1fUQ+2L0PAnL0jKtd4JkBOIL1Sw63C8yGfboaXG7u/rcwdEiIVJgRQTY5
         OVpVFcWhd4Bt0SMnJTbl5ui1LiCdSXevkDijL1gl6uSPz+bskeITlQ8u88xFNDzr6iqN
         0sccskA1s7tQQJD0gBXxUGj0t6BfJI/n2R3ezJ46jvSYC+lEcD1pTDi6SRzyRCh2ijQl
         cjGQ==
X-Gm-Message-State: AAQBX9eIVSgZCcKzDPbnpY3J5BHZUpzuUV1P8qkfSK1VoUDryh7/zQbn
        xN9Ix8/dMnpxjaIGd8wIu0SDNg==
X-Google-Smtp-Source: AKy350b/S33hTzmMKmIiE3cAUcszVss3Vq9YQ433EOSDy5GRejsFQJOiGo5VKS3F//7W7IojU+W3rw==
X-Received: by 2002:a17:906:5e43:b0:920:254c:1e2d with SMTP id b3-20020a1709065e4300b00920254c1e2dmr943385eju.39.1680588167698;
        Mon, 03 Apr 2023 23:02:47 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:233a:5c18:b527:381e? ([2a02:810d:15c0:828:233a:5c18:b527:381e])
        by smtp.gmail.com with ESMTPSA id z12-20020a1709064e0c00b00882f9130eafsm5363269eju.26.2023.04.03.23.02.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 23:02:47 -0700 (PDT)
Message-ID: <0cc604af-df08-0745-21bd-40f03fac38d7@linaro.org>
Date:   Tue, 4 Apr 2023 08:02:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/9] dt-bindings: firmware: document Qualcomm QCM2290 SCM
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>
Cc:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230403-topic-rb1_qcm-v1-0-ca849b62ba07@linaro.org>
 <20230403-topic-rb1_qcm-v1-1-ca849b62ba07@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230403-topic-rb1_qcm-v1-1-ca849b62ba07@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/04/2023 19:35, Konrad Dybcio wrote:
> Add a compatible for Qualcomm QCM2290 SCM and add it to the core clock
> users list.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

