Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9322D4DB711
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 18:24:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350714AbiCPR0D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Mar 2022 13:26:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350693AbiCPR0C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Mar 2022 13:26:02 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1249DB7D8
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 10:24:48 -0700 (PDT)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C24573F4BC
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 17:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647451486;
        bh=DFWkk+dD+miD1tAhLV++xP/XlZBQMQ7X6zFsvz7Q3qs=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=rdLd0i7EOiwNv4y+CkRUDFmygq1HZH3twJalOTOytHjUVDhI+W5Nw6XWtSy+8WX+a
         ycHQdNjZEB6jCVJ/oe91rP0TGDAC05anIJT9EigNou4smDzwcA/cLMq4dqq1DX6q6B
         aEQNCsRIoKMWA7925bP+Tx2kEyod+VE038BTsU1/98yHKI7YicbD593bvJzGpKxqku
         8qJdKAgDByfyGJ4ht++5QQD7MoObkkWUDiQsUNI0yBKbAfGEBfBFFli7QJ7s7ZB1Q0
         vEm1KZ52W2MXz023X04MMSA575Gyngn4HkAgEQpmm2eBAXDsK6xGme8fE9t3nV4KU8
         rpbpdzYXZabyg==
Received: by mail-wr1-f70.google.com with SMTP id t15-20020a5d534f000000b001f1e5759cebso781989wrv.7
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 10:24:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=DFWkk+dD+miD1tAhLV++xP/XlZBQMQ7X6zFsvz7Q3qs=;
        b=fmd5sl3gic7gludU7D9OlvGMWStJxzJbdkizfuV/QhprH8PmEhSkS1yoCCiYX4VaAU
         MBfJHqiBJxOu2CaHsQExyl93Mavsgev28HtLasMbmwB9Aw1+Dkt6jmNY1N7DD7Uv614Y
         W61CcLw0ITpwmdy324+QE77rdIo4lGsT1z3W6iR5TVxYRV/ImFLHPiyfsyCB4nSFbE3l
         v0Cv9MXnhMc8Cf3WglteGYthNIy/2AvzjbGiObir67ZeCRjnwVbXCRFFh3R0Ikdyar0a
         S+BqVWx7p27udvK4LGpVS4V+kSSVyEGJGreD+N4ChbKlpLBxCKtfIPLYnxT+hfr/zg3+
         iY9w==
X-Gm-Message-State: AOAM5311XVFzKQy2JQVBEzjChb5SaeZKoowezbwZmFo3IRrOu7pNmqVW
        W56PWWzmuNjQ0tz+RFSd1Oo4PGu9WvBDp5OYLcZPW6smiS0bdzThA5DfoRditQd2IkUKRE/m+Dg
        25JV7qBv5rvO1gFRq9qfhb0iiBC7z1huPgbacmzs=
X-Received: by 2002:a5d:5308:0:b0:1f0:6300:f1d0 with SMTP id e8-20020a5d5308000000b001f06300f1d0mr807674wrv.278.1647451486367;
        Wed, 16 Mar 2022 10:24:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyKIDxRFk6Y7FutZOGNJm0wMC59ZyrwAOZDtuOajZo3/h8b2cFROj96IpV5T4Wa6hFneoX2Jw==
X-Received: by 2002:a5d:5308:0:b0:1f0:6300:f1d0 with SMTP id e8-20020a5d5308000000b001f06300f1d0mr807651wrv.278.1647451486124;
        Wed, 16 Mar 2022 10:24:46 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.googlemail.com with ESMTPSA id p12-20020a5d48cc000000b001e6114938a8sm2111015wrs.56.2022.03.16.10.24.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Mar 2022 10:24:45 -0700 (PDT)
Message-ID: <6490a3e5-04c8-535a-7c29-de7ca9bc8f1e@canonical.com>
Date:   Wed, 16 Mar 2022 18:24:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v4] dt-bindings: can: xilinx_can: Convert Xilinx CAN
 binding to YAML
Content-Language: en-US
To:     Amit Kumar Mahapatra <amit.kumar-mahapatra@xilinx.com>,
        wg@grandegger.com, mkl@pengutronix.de, davem@davemloft.net,
        kuba@kernel.org, robh+dt@kernel.org, appana.durga.rao@xilinx.com
Cc:     git@xilinx.com, michal.simek@xilinx.com, linux-can@vger.kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        akumarma@xilinx.com
References: <20220316171105.17654-1-amit.kumar-mahapatra@xilinx.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220316171105.17654-1-amit.kumar-mahapatra@xilinx.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/03/2022 18:11, Amit Kumar Mahapatra wrote:
> Convert Xilinx CAN binding documentation to YAML.
> 
> Signed-off-by: Amit Kumar Mahapatra <amit.kumar-mahapatra@xilinx.com>
> ---
> BRANCH: yaml
> 
> Changes in v2:
>  - Added reference to can-controller.yaml
>  - Added example node for canfd-2.0
> 
> Changes in v3:
>  - Changed yaml file name from xilinx_can.yaml to xilinx,can.yaml
>  - Added "power-domains" to fix dts_check warnings
>  - Grouped "clock-names" and "clocks" together
>  - Added type $ref for all non-standard fields
>  - Defined compatible strings as enum
>  - Used defines,instead of hard-coded values, for GIC interrupts
>  - Droped unused labels in examples
>  - Droped description for standard fields
> 
> Changes in v4:
>  - Replaced additionalProperties with unevaluatedProperties
>  - Moved reg property just after compatible in all examples
> ---
>  .../bindings/net/can/xilinx,can.yaml          | 161 ++++++++++++++++++
>  .../bindings/net/can/xilinx_can.txt           |  61 -------
>  2 files changed, 161 insertions(+), 61 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/can/xilinx,can.yaml
>  delete mode 100644 Documentation/devicetree/bindings/net/can/xilinx_can.txt
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
