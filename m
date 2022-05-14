Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63688527407
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 22:43:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229705AbiENUnu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 May 2022 16:43:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229486AbiENUnt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 May 2022 16:43:49 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EF186256
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 13:43:48 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 4so13963148ljw.11
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 13:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=v62VZWh5zQMQj8G9NtipATuEu9X1kMOa29L98K+aYJ0=;
        b=MyozKlrbXZbVXKqQFFX5h2WzJD4WscKLb1no7bXzcxBvjYJZ3r4UFtWu3nS8rAJTrg
         VMPGRgDqEKT5aOKa//byAMIWgJcPtAcqHelesHxK90sOc1Mm5EPrN0ZQnnHD/O2/9Q/+
         qwLgXsu6FtB3dyN1b+nN6k+UUDzvQCM8eAsAA5H3CuwGd1Rnp+QWD33BqOBhYAHAJR9h
         92KmvJHYeRI66CndEDU6rxIyhJwxhDSZNmH6NGeTyzyEjZaAg6v0E3HBk2BCQwZPEBqQ
         X01/4s5IpfHZGyQogcbohC8IyFqVafuhPG3l+r7W1LojpueZQ5QaMEIHiSY82eVh6opP
         se4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=v62VZWh5zQMQj8G9NtipATuEu9X1kMOa29L98K+aYJ0=;
        b=kRraaPhLGRhtF0b7LGbZk85j9kOZFM6NpNI74heZD95nngw+H6N1VYCHMkHvGKjF/F
         xFCbGhewsMzC3bnfJTuvozY2MbU4K2PlUHfw3As8Ri9D539EG8FHY8INE2oK9WT5mUC9
         20E3zXtCGxNP52YEFz97ixOqhD4VI4D9Jvu1ERKp1z/XZ32Wc5zSe5xGwEW3jFrgrmfh
         641+OvhvFlrwYdJ35mjRRD9qFf3edTWWMyA8btk7b5ZppJszgEzR97JEROtGgLvSYH+K
         uZa1MwbKja65RftQ6gAjRdQgmkJG2a/DKX+WrESWiJyDauwUfLBTiVeCqvyAG8/j6PA9
         T/aA==
X-Gm-Message-State: AOAM532aZUWvG74JzuuXMByM6SdFwDYmsjVLTih6+E3PBlTjgfRKWnSu
        OCIb8If2ujE26sFG4kA9imhvSQ==
X-Google-Smtp-Source: ABdhPJylhaA//YyukUFNU1Rqe/LUPZSyVbPExJhknnh9wZMcJQuMypd2gHavHFxWIHiVZJppE5m7Qw==
X-Received: by 2002:a05:651c:158b:b0:250:a056:7e48 with SMTP id h11-20020a05651c158b00b00250a0567e48mr6939097ljq.64.1652561026599;
        Sat, 14 May 2022 13:43:46 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id y15-20020a2e320f000000b0024f3d1daeedsm941204ljy.117.2022.05.14.13.43.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 May 2022 13:43:46 -0700 (PDT)
Message-ID: <680c241f-671f-fafd-611b-277e08ba46d2@linaro.org>
Date:   Sat, 14 May 2022 22:43:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [RFC v3 2/5] dt-bindings: soc: grf: add pcie30-{phy,pipe}-grf
Content-Language: en-US
To:     Frank Wunderlich <linux@fw-web.de>,
        linux-rockchip@lists.infradead.org
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Jonker <jbx6244@gmail.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20220514115946.8858-1-linux@fw-web.de>
 <20220514115946.8858-3-linux@fw-web.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220514115946.8858-3-linux@fw-web.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/05/2022 13:59, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add compatibles for PCIe v3 General Register Files.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
