Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8076A629A3B
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 14:29:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232818AbiKON3f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 08:29:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238223AbiKON3e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 08:29:34 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA2D1F49
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 05:29:28 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id u2so17496925ljl.3
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 05:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m8/571RzD8HO7x98AMQxlDHgd69AGcRueUaHlHGZA2k=;
        b=jpMA+aALKoFqugZ/DkuZDU0yDcLbzWdAdLvx3bKcWcJ//U9YlKIJvT2cIrb0dvFALa
         Vdol+cwrROakLQObmfWUefKh3YtiSn7RBeIfeRy/AkVgZ4iOSpSIUqNDkR27/pzHtVz3
         zHPCF1JqSz91LM3GKf2U+Yu9/ce/ZzwYC2QoVPI+4SVNYN2eYeJNDmV2ZokCwNEbL4PG
         7B+IvRTKPyyodKgHStyhW9VTSGji+cknjHJYAF+cu3MXKY8JPzINY77xyKaArIcTabmw
         5qg3F+wPC991MR1+cPNvTCCJ8ynDlsrEG7O0npmzdAoIe8v6T9JwYT3cWCn04lH6CuRI
         ZcQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m8/571RzD8HO7x98AMQxlDHgd69AGcRueUaHlHGZA2k=;
        b=Hy8EkVVvq7fB8H0HuNsihnAetCjYn2P9W6UDFWBMWK9dWm72ZgMtb0eSjo5vyEfWd6
         CkQacAbNc+IceOAJeSt3OKEwb/Q8Z6qUoPBkW/nebK4vV9LuyDd9AdGmNnDzkcKFgDEs
         PDmvVcyiGvVLzp0htC+gtBfewrY5c5tWJaRTeIlwHDKFGdOgKTWS5FEwpIeEMiKrDGVF
         wRK05E9y+tiAzI71z9yPByxIPW5D85hPFdZtbJen2FCGtc3u6eywh5wg8ni65kWjDwW2
         +OTyLaqYuEvkuH45ZnNpFflSXWOJQl1qyi2lzmsTiBYpRM0MVw/1YkXJsOEoe1waTMEw
         CnrQ==
X-Gm-Message-State: ANoB5pnhsHYxKyREDKtbMJAaO8Ch9EYPDOb17TezTkQSGH1nSY9Hc5LR
        AhLOG4VkuTGx+U8IonRE3Qf38w==
X-Google-Smtp-Source: AA0mqf5lYIIfVeBC99+U3iZHmg7EN30sHOtE2HHltdeEpz34+ahL7J381NXgO+cbaTjJO1jB9Ljdmg==
X-Received: by 2002:a05:651c:2314:b0:26e:2772:ffab with SMTP id bi20-20020a05651c231400b0026e2772ffabmr5568604ljb.97.1668518967304;
        Tue, 15 Nov 2022 05:29:27 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o18-20020a2e0c52000000b00277351f7145sm2415833ljd.105.2022.11.15.05.29.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 05:29:26 -0800 (PST)
Message-ID: <205120bd-7178-0c2e-b131-e296d3d3cca8@linaro.org>
Date:   Tue, 15 Nov 2022 14:29:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [EXT] Re: [PATCH v3 00/10] Initial support for Cadence
 MHDP(HDMI/DP) for i.MX8MQ
Content-Language: en-US
To:     Sandor Yu <sandor.yu@nxp.com>, Jani Nikula <jani.nikula@intel.com>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>,
        "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
        "robert.foss@linaro.org" <robert.foss@linaro.org>,
        "Laurent.pinchart@ideasonboard.com" 
        <Laurent.pinchart@ideasonboard.com>,
        "jonas@kwiboo.se" <jonas@kwiboo.se>,
        "jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>,
        "vkoul@kernel.org" <vkoul@kernel.org>
Cc:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "tzimmermann@suse.de" <tzimmermann@suse.de>,
        "lyude@redhat.com" <lyude@redhat.com>,
        "javierm@redhat.com" <javierm@redhat.com>,
        "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
        "sam@ravnborg.org" <sam@ravnborg.org>,
        "maxime@cerno.tech" <maxime@cerno.tech>,
        "penguin-kernel@I-love.SAKURA.ne.jp" 
        <penguin-kernel@I-love.SAKURA.ne.jp>,
        Oliver Brown <oliver.brown@nxp.com>
References: <cover.1667911321.git.Sandor.yu@nxp.com>
 <87iljp8u4r.fsf@intel.com>
 <PAXPR04MB9448612AD6C7744B7C706D6FF43F9@PAXPR04MB9448.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <PAXPR04MB9448612AD6C7744B7C706D6FF43F9@PAXPR04MB9448.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/11/2022 14:50, Sandor Yu wrote:
> Run get_maintainer.pl for patch 1, 
> Your email address is list as follow,
> Jani Nikula <jani.nikula@intel.com> (commit_signer:2/8=25%)
> 
> And I add the email address that comment as "commit_signer" into Cc list.

That's not a maintainer entry, but contributor. No need to Cc occasional
contributors, except people interested in the driver.

Best regards,
Krzysztof

