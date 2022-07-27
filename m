Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F67F582DC6
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 19:02:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241323AbiG0RC6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 13:02:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241162AbiG0RCZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 13:02:25 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EA516C131
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 09:38:21 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id c3so16562754pfb.13
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 09:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=E6VKWZ1se4siDxKOWikoAVtDU8DJUcn0aA0tC0NKvZs=;
        b=cWDVwke/DDOP13t1OKQEk6YBBjQLlM5L7E61aOzaJj+whuiOD6LtFAAIx0fIBDW2WA
         KOzCcasAjPLPOMN0PA0D/eIKpupclU6OuYoyDv5vCLHv4JFLZ6v6b+5ZbO/Akaoo58D0
         wTzL9y4I5oJ4SrgZdqKaviee1u15EOHcVYHbM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=E6VKWZ1se4siDxKOWikoAVtDU8DJUcn0aA0tC0NKvZs=;
        b=0ooTsRSVp7UHIiSIE/HWmU6NFCUlJP7RKiqjOk0e6ezm6RvbzC080fnsmWg9PcI9rn
         zXOsCAwD9T3dt5Sfn3D8RbQe9btGuUJ7PQ1X1cdQrON4sfJX4Avib8FUmsuVQXlGrEaL
         4Um562gmK2sMDulryJ3/ZfSNNc5IppXhpHK0HIe2pGKgZRhx8aCDZoIvBFe1J6IpEg5P
         RW5do4XIforSNvgxyBBncHp6d0W6KQQgWjyVhh4mN5kLFDccjIgmuXoDp07Uwjskd4f0
         qMjkRkyLyzOumAiwuEAjQsXsJgKEefrKXW0aG1y71BcAST5NMYxEy2TlPtzGupgF05Qq
         2zzg==
X-Gm-Message-State: AJIora9nzyYzt7R1LUMBBEh5yFY7S9p7xgqlKZIU+kQ7pGDxsG14Rmes
        vnSfV8PV1uDJDgc4pN5eJaWRgA==
X-Google-Smtp-Source: AGRyM1tAfzfBudqElQyU5yiMVHs0hJr8vaxUU4c2j7awMABZBk05+T9M2cOm7FaFjn3wyJWwTvYNrA==
X-Received: by 2002:a05:6a00:140d:b0:52a:d561:d991 with SMTP id l13-20020a056a00140d00b0052ad561d991mr22993386pfu.46.1658939900308;
        Wed, 27 Jul 2022 09:38:20 -0700 (PDT)
Received: from localhost ([2620:15c:11a:202:472c:7351:bacf:5228])
        by smtp.gmail.com with UTF8SMTPSA id d72-20020a621d4b000000b0052bae7a9722sm14101131pfd.116.2022.07.27.09.38.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 09:38:20 -0700 (PDT)
Date:   Wed, 27 Jul 2022 09:38:18 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 2/2] usb: misc: onboard_usb_hub: Add TI USB8041 hub
 support
Message-ID: <YuFp+lksU+oHgK+p@google.com>
References: <20220727141117.909361-1-alexander.stein@ew.tq-group.com>
 <20220727141117.909361-2-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220727141117.909361-2-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 27, 2022 at 04:11:17PM +0200, Alexander Stein wrote:
> This is a 4-port 3.0 USB hub.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Acked-by: Matthias Kaehlcke <mka@chromium.org>
