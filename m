Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38C5C716186
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 15:21:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232643AbjE3NVO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 09:21:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232640AbjE3NVM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 09:21:12 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B0D3109
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 06:21:07 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-96f5685f902so669930366b.2
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 06:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685452866; x=1688044866;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E+eOOtFzZaMUgzpRXCTOhauCZvZ2ynFbGFE/iL/+7bs=;
        b=FYCaGVlW5w5LKnkaLbT/K7xC4sgxPR9LtKj7+k4YLieH0eGiQwzMy+hgpJbbRrj9MC
         5y1WhbO6jFitH0xRstz2DVx118ojkGzHVGlmIVywkanTiNLlzAwmMkkZmVvKf3W/k3Ts
         XcK5GVJT5x0S3qBuuYtYTLqh1JScJsTfJxvv49HT2qyr+IvgZpnz7dHO/VAFgh3Br7vM
         T3vXJ236PEesrfuIxqpCIJh1EP4+g6X0Ck2ptZKBWOkRO6QL4DHgyFGSy0SnymRd4pWj
         W0swycRrswpcYUvK1i5IROG7IuIbAFZnIpfGK7NbheBjBSopHyYIVc+cdHwyqbJPEPBH
         w27w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685452866; x=1688044866;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E+eOOtFzZaMUgzpRXCTOhauCZvZ2ynFbGFE/iL/+7bs=;
        b=DrwkX+yBOMCNDd+uprPMFnqBe8QfiYgWqVOgBMINUCk8EVAWPJrjqFSFR44wxXxCbx
         9buE4oyesUANl5AjHgVYVMte0onyUyV4Noi+hsOkzb8tksEQdUVVfc4i+zBf+TiFUWF/
         12VSbrOzMdCn26In5jfKsQb8ftNKXGHE+IgCe7UdOz1D49fLHlOvo6bs8rAB775BqMk/
         miXLw7GTzhfoTCJJZdarihX8P8zazskej39OS9PCQCw7KWYpZH9RHTFpnTFUfSewezrF
         69GEmnS4jpsybUhlio+yZVsID8VOZYyop3tz3eJZS5RGK3xN/JbJnQRAIQrQHoQTYkMa
         tFEA==
X-Gm-Message-State: AC+VfDzrizVy7KbkzGyNX8IzavVMJeJYi14jXIfVhSEU3PnJq+LjueBt
        oU3Clx8zBmKOqK/R8ei0pWi89A==
X-Google-Smtp-Source: ACHHUZ5g3cfwTuUld8iB6zign2Xojoa+5qld/dJybIZhplIUr7yPUPRkQLMzEu0iOZGJjcIMDnWldg==
X-Received: by 2002:a17:906:db0e:b0:970:e80:e29a with SMTP id xj14-20020a170906db0e00b009700e80e29amr2500203ejb.68.1685452865904;
        Tue, 30 May 2023 06:21:05 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id pg27-20020a170907205b00b009662d0e637esm7252694ejb.155.2023.05.30.06.21.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 06:21:05 -0700 (PDT)
Message-ID: <6cea59fe-3192-0a0f-9633-7c2d83d5a87f@linaro.org>
Date:   Tue, 30 May 2023 15:21:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 0/4] Samsung Galaxy Express SGH-I437 Support
Content-Language: en-US
To:     Rudraksha Gupta <guptarud@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20230527040905.stmnoshkdqgiaex6@ripper>
 <20230528001010.47868-1-guptarud@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230528001010.47868-1-guptarud@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/05/2023 02:10, Rudraksha Gupta wrote:
> This patch series adds support for the Samsung Galaxy Express SGH-I437.
> Currently the following things work on this phone: UART, eMMC, SD Card, and USB.
> 
> version 2:
> - Combined patch 1 into patch 4, as the sleep_clk label is specifically needed for the USB node.
> - Reformatted the commit messages to align with the style used in other commit messages that modify the same files.
> - Included a cover letter to provide an overview of the patch series.
> - Slight refactoring of the device tree source (DTS) file.
> 

Do not attach (thread) your patchsets to some other threads (unrelated
or older versions). This buries them deep in the mailbox and might
interfere with applying entire sets.

Best regards,
Krzysztof

