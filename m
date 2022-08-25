Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87D175A0FDE
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 14:03:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241077AbiHYMDX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 08:03:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240846AbiHYMDS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 08:03:18 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58E9596FC6
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 05:03:17 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id d8so15530851lfq.0
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 05:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=/aAGWIDmltGqXOS1ncXoIYBBvj6+VUj5xGoOzvsU0MA=;
        b=WdUenM7VDQ0dUtNevmd85i9vmMaUSqNHQU4niT4Ub0JHAgEIrUdbwe9jod52jKPcLZ
         gu67LhhSXPaScJLsv3RoowAZksCBs3zCpf9jcGgkIFT5oBgyN25F/NlOaBRkgnNyVGNR
         +iyjhGFeReL/ofScX74LsFDV+4RKeyjpgIv+YXaWm1WI82ZNivhiU2PNYA/bPV1PxfmI
         igK7n+OJAPtUNlUDmZmG4JOSVXTOC11Wf+QNEodulOeyJbqfTydeuuvC+7eBjzdo7Ajy
         OZpwemzf8gfGavcsUHOo9THEM1Q6PrkRSIISVE8QtpaujETvyFl39yR6DA0aPRX4sBcq
         ddBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=/aAGWIDmltGqXOS1ncXoIYBBvj6+VUj5xGoOzvsU0MA=;
        b=xkbp8lvlt0XvdCuP6g4x7dSj9wam30fcmbcwWmuIXmll51hg8Ws/y8CREyd+Mq1cam
         9LhgBqSceC2Hx0w5U8Yvz4YfxG9bWcFia2xJcWZoxd8G4xBFBM/01HgVNy8/bT+HJxsP
         tiIR1BaTqzYNPK0OQcHqEhNg2weWeV0Azamj+CumXYOOkiqoTDpNINbonZs0ljInFb5T
         YVzJoGZlvOXZ3PT6YPscLA+nLZjssnrYmBrQIU1zSsHx/yEebRvDbdInqwl2nWKbYqJg
         hxU0/mg05bYewQwVLxZWtUfNXgqx+yN2Upe/th4l8Qb21OEjRLOqgi9yh11T5lFq/MVZ
         1UcA==
X-Gm-Message-State: ACgBeo22PPc+pOCPU7XYDU3qG7GgbNv81AqMPnfW3fCYuha6atw+ieBh
        cJmVMbua4RuCnDmQXHEJY0tmTA==
X-Google-Smtp-Source: AA6agR7l941MLJuNHsUITWiNqmNN3tuVDbhPikxJIUstI7F8Dic+VWnl0D5cWHe0KuARV/pswRivug==
X-Received: by 2002:a05:6512:3983:b0:492:dcac:331 with SMTP id j3-20020a056512398300b00492dcac0331mr1004792lfu.385.1661428995616;
        Thu, 25 Aug 2022 05:03:15 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id x10-20020a056512078a00b0048a757d1303sm455979lfr.217.2022.08.25.05.03.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 05:03:14 -0700 (PDT)
Message-ID: <cb6c855c-2931-b957-8cab-5df33de4792e@linaro.org>
Date:   Thu, 25 Aug 2022 15:03:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: usb: Add missing
 (unevaluated|additional)Properties on child nodes
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Xin Ji <xji@analogixsemi.com>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Amelie Delaunay <amelie.delaunay@foss.st.com>,
        Samuel Holland <samuel@sholland.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
References: <20220823145649.3118479-9-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220823145649.3118479-9-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2022 17:56, Rob Herring wrote:
> In order to ensure only documented properties are present, node schemas
> must have unevaluatedProperties or additionalProperties set to false
> (typically).
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
