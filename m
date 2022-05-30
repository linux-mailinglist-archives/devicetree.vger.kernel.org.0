Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85A8853756D
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 09:31:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231432AbiE3Hbq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 03:31:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232493AbiE3Hbn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 03:31:43 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F14ED90
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 00:31:42 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 129-20020a1c0287000000b003974edd7c56so4463787wmc.2
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 00:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=oiw/uRJbMSCvuydWISxUK72kvSJUpMpNlhQoZ7zkqPk=;
        b=kfzDYj8rXu5eIBwsxs4l0fQ0AUFx3draZpw/WHJKafG8lXmah0qeFBbKftsOdSHLid
         fcLi1KEXnejapJDZ+/S/Aq+c35QjbHQYclwAgtUGZbUz7OJLjKO/zwrEeYaHSpwYiM+j
         9c7JogBg8Tr6ZFB0/97EOI1hjldFpKuIxLfn4eNeeLdWZIwrFSCuDmrMUQNlAApMWG2Z
         NoPLw8z11UxmzFBcxWJ0VaDNci4uW7XK0FKQIo5NEW24lne9rnpqg7e1vIW+nrutvdbi
         4GRHuAvchsyMXoVNAwfbnhmd7sXjQNIeRdJQpbKdy+YjmnwqWZMJTUpAJ2VL5noFGcnU
         IMNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=oiw/uRJbMSCvuydWISxUK72kvSJUpMpNlhQoZ7zkqPk=;
        b=IyoLt89almhk0Dvsvs2u4bcE9uvDckxD3a7qf510Q7QNifoPQx7GQwhb1kaH9KoB0U
         X2LIxHnTBqeEX/FnzYj7lvjpPZDrrlRI+gim7WCQCe3n95pMjU1CLn9kwTOhwygsrfwE
         txuDcAsRMpGDsyiGXluMH3Z1FqBvh31cMhQXy34wDzoqU0xc5I3NrYjd5TxeSEgVfSWw
         6jGxWtugAnzjCcyfThLKC22S4ovcp4AxjnEv118giJLdTX00jai+jFmjtIcP4a7/z2z0
         TfmiK3tJkFftWeL9p8nO4dsTRAmYACfqJnO1anPzgLq1yQADiYIZIiEQb8daWbpvpwCs
         lzmw==
X-Gm-Message-State: AOAM533zMw68FNJ1lrbjwKYKkaV2J8zVGkowTbOhL0f/U9YLkOnhHoV2
        yHK6poTSSTeJFNKlOstPkqXWTA==
X-Google-Smtp-Source: ABdhPJzQJ26kiCNRK22TsWhIU/bHfbQahg9lFmsXUYwj+Kj4OVS70jf6inpFF7GIRN3VTzZLRVHwlA==
X-Received: by 2002:a05:600c:1492:b0:397:4afc:cc76 with SMTP id c18-20020a05600c149200b003974afccc76mr17762579wmh.124.1653895900645;
        Mon, 30 May 2022 00:31:40 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l6-20020adff486000000b0020c5253d907sm8212583wro.83.2022.05.30.00.31.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 May 2022 00:31:40 -0700 (PDT)
Message-ID: <0b5bb492-dfe6-0388-491c-b2afc531f35b@linaro.org>
Date:   Mon, 30 May 2022 09:31:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v2] arm64: dts: intel: socfpga_agilex: use defined GIC
 interrupt type for ECC
Content-Language: en-US
To:     niravkumar.l.rabara@intel.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Dinh Nguyen <dinguyen@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220530061212.1682439-1-niravkumar.l.rabara@intel.com>
 <20220530072530.1685970-1-niravkumar.l.rabara@intel.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220530072530.1685970-1-niravkumar.l.rabara@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/05/2022 09:25, niravkumar.l.rabara@intel.com wrote:
> From: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
> 
> Use defined GIC interrupt type instead of hard-coded numbers for ECC
> (Error Correction Code) memory, which creates edac sysfs interface.

Ah, ECC was about device node... sounds fine.

Anyway, please always include tags you received.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
