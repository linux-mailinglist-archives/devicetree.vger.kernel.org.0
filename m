Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3858E682B42
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 12:16:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231611AbjAaLQJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 06:16:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231784AbjAaLQD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 06:16:03 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 192A14B74C
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 03:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1675163710;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=r5WDosCN8ptqhgrL1cgVrQgfmxbqRf8M/DBi7ayRhQA=;
        b=JOj28pt/5tSkoR2voFgvxr/7OhWYhEkibJo5LD4HWS0ZPJduxO3d3Lf3xYp7L7RKAtOcm0
        89XNojvtuvUrUUwnzKcHEhkaOszzIEEKaaX+901qrn/BFv19NgaEz+twfHkTlKEJGTjLrd
        87j+VeOlFO/WzXhVhqPRO+k8mseKxuw=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-664-f8Twh7D2NlupAptnwxFoWQ-1; Tue, 31 Jan 2023 06:15:09 -0500
X-MC-Unique: f8Twh7D2NlupAptnwxFoWQ-1
Received: by mail-qt1-f197.google.com with SMTP id a13-20020ac8108d000000b003b7ea9814a2so6363421qtj.2
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 03:15:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r5WDosCN8ptqhgrL1cgVrQgfmxbqRf8M/DBi7ayRhQA=;
        b=syU56CVZwfC5uVA31RlqbZ1KagKPAjz6rx4SeVcgOb5IX81OkKSen/MBeN2JhLxnUl
         3XH7Q4wFUJSCEFg0rMe5dWQXo4RA6UyO0g5PUliqgoneIdyjptv1369GMQh6DZycoyzC
         EMr9D+85CmMzrwY9XCB5yBEBX1yso84Cy64WekAiefI8DIb5WttlzDRnbqwLSlmVh0AJ
         jaqoXlsQoktZR8iuuMNiuMyQMGNl7dgYHXWvIy96tZZ/cioaUUNYnPsj3LzO2p6jPR3u
         QCs/ux4ocZYx/R5D7kSL3XglBBVQJC8oEYbkz4jp9nTnMjoZOFQkmpwvQDvQAjbJibDV
         QcTA==
X-Gm-Message-State: AO0yUKUGbVwWzo3JlSspsZGx3yXs75FUR4In7mJM7QH+AfoKdIqtzKq9
        BRB7WvaT2BsFFvKwx8uT3OUh8Eu/Y+CgCVbl5Raduxd9o/gNng1TpXmU+X2KcdbuX7oRcOfiyg0
        Wkfs0SGjoqQ/YTsocIh2bMw==
X-Received: by 2002:a05:6214:b85:b0:537:6dfa:efaf with SMTP id fe5-20020a0562140b8500b005376dfaefafmr33023139qvb.13.1675163708313;
        Tue, 31 Jan 2023 03:15:08 -0800 (PST)
X-Google-Smtp-Source: AK7set9PvPYF6HAkQ+AlinxEAf03bWrkLFOaUAgoOy2qSI7bVMAHunwsC9vjqR1Y96nmCMq2TF5yVg==
X-Received: by 2002:a05:6214:b85:b0:537:6dfa:efaf with SMTP id fe5-20020a0562140b8500b005376dfaefafmr33023117qvb.13.1675163708088;
        Tue, 31 Jan 2023 03:15:08 -0800 (PST)
Received: from x1 (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id bs32-20020a05620a472000b0071d7ade87afsm4839339qkb.67.2023.01.31.03.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Jan 2023 03:15:07 -0800 (PST)
Date:   Tue, 31 Jan 2023 06:15:05 -0500
From:   Brian Masney <bmasney@redhat.com>
To:     Steev Klimaszewski <steev@kali.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Johan Hedberg <johan.hedberg@gmail.com>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Sven Peter <sven@svenpeter.dev>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        Mark Pearson <markpearson@lenovo.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: sc8280xp: Define uart2
Message-ID: <Y9j4ORb4r8+QXx4J@x1>
References: <20230131043816.4525-1-steev@kali.org>
 <20230131043816.4525-4-steev@kali.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230131043816.4525-4-steev@kali.org>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 30, 2023 at 10:38:15PM -0600, Steev Klimaszewski wrote:
> From: Bjorn Andersson <bjorn.andersson@linaro.org>
> 
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Steev Klimaszewski <steev@kali.org>

Reviewed-by: Brian Masney <bmasney@redhat.com>

