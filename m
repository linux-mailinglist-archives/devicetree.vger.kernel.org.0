Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56CB0692129
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 15:53:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232166AbjBJOxg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 09:53:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231984AbjBJOxf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 09:53:35 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED645635A6
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 06:52:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1676040769;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=W1qMoGyZitDLtPNourhoy8BxIjCzMdWzl566A9X9xVk=;
        b=QKkol+PRdR/FUuLJ49xMB2CH3lufeTkUQ7Ppj4NXSLAabKTOFQpTmqt8r4BUEErHMuYzRE
        h4jy+zuZZAIqe7iclweLGHoLmIjJ+O7uevwUmUT1G/pIyJWTz+XJ0ZSYseMY9KktDbgjH5
        D4jRvJCHrCDGxU5+1oLpuMkAXMKJ8DQ=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-304-cgixbl9-MqW9GojHCrkihQ-1; Fri, 10 Feb 2023 09:52:47 -0500
X-MC-Unique: cgixbl9-MqW9GojHCrkihQ-1
Received: by mail-qk1-f197.google.com with SMTP id x14-20020a05620a14ae00b0072f7f0f356bso3416003qkj.1
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 06:52:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W1qMoGyZitDLtPNourhoy8BxIjCzMdWzl566A9X9xVk=;
        b=flwPZ3DAR9n4extCx4HSVwg6jc6Pop6oK+5aCATfUJUsZbb+oaVZ2q1hNLE9OBy1AW
         STrIW56qKHo3Py0JbeI5lHQ/SENBadQZbFuZXvfHExP4UcU0LHXF01Vi4EWwMC8gra+q
         7NHirqIEU9vTHbPyvEDzlEvp3OBEO2ifIvftxPdWKKmoA4afmBdEUm87lfMV0wPgoYb4
         Yq91wLWO0ySbFuA1gYk63s0WgkH9/WKRTRiCDjdQxYDm8dq58+47MHsBwSf8HIkVsaC3
         Tfve0xX7GIvhepmLg5HyAfKon5eYkNmht12vRrd79o0rMJmf1VnexYFJZRJ/GZYmJNs3
         VZmg==
X-Gm-Message-State: AO0yUKUygqOhvVRi6sIPPXDs5YBHXr2ybtX0WBpu05NdYjCSph+uPal9
        KXt9fx8q0iXlGYyJOnW/RwcTUmtgq8kGflQLqBvV2vM2n3X7/WjVwEf1algFGQyB64i8TTsqsWL
        LyjOizCYutmRZ/xZSUYHk5A==
X-Received: by 2002:ad4:5be9:0:b0:56c:14a1:b751 with SMTP id k9-20020ad45be9000000b0056c14a1b751mr19283558qvc.8.1676040767451;
        Fri, 10 Feb 2023 06:52:47 -0800 (PST)
X-Google-Smtp-Source: AK7set/0E8zBTwg/UC/GsP0b0P/sbs7EikwLvTC+cGGNrrA3jEg1RBwChVEkVmdpw7sOGcdiM3HM2w==
X-Received: by 2002:ad4:5be9:0:b0:56c:14a1:b751 with SMTP id k9-20020ad45be9000000b0056c14a1b751mr19283526qvc.8.1676040767235;
        Fri, 10 Feb 2023 06:52:47 -0800 (PST)
Received: from localhost (pool-71-184-142-128.bstnma.fios.verizon.net. [71.184.142.128])
        by smtp.gmail.com with ESMTPSA id 145-20020a370697000000b007195af894e7sm3644010qkg.76.2023.02.10.06.52.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 06:52:46 -0800 (PST)
Date:   Fri, 10 Feb 2023 09:52:45 -0500
From:   Eric Chanudet <echanude@redhat.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: qcom: add the SoC ID for SA8775P
Message-ID: <20230210145245.jyqir6odnkyr5zdl@echanude>
References: <20230209095753.447347-1-brgl@bgdev.pl>
 <20230209095753.447347-3-brgl@bgdev.pl>
 <20230209175515.xrebz5edmsi4xkzv@echanude>
 <d1d1bd4e-0205-24d1-9589-6d6b57b6d477@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d1d1bd4e-0205-24d1-9589-6d6b57b6d477@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 10, 2023 at 09:58:29AM +0100, Krzysztof Kozlowski wrote:
> On 09/02/2023 18:55, Eric Chanudet wrote:
> > On Thu, Feb 09, 2023 at 10:57:52AM +0100, Bartosz Golaszewski wrote:
> >> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >>
> >> Add the SoC ID entry for SA8775P.
> >>
> >> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >> ---
> >>  include/dt-bindings/arm/qcom,ids.h | 1 +
> >>  1 file changed, 1 insertion(+)
> > 
> > Reviewed-by: Eric Chanudet <echanude@redhat.com>
> > Tested-by: Eric Chanudet <echanude@redhat.com>
> 
> How can you test a header? What type of testing Redhat does on the headers?

IIUC that ID is compared against the one read from SMEM by the socinfo
driver. I meant to confirm it matched the number the board I have
returned. My apologies in advance if that was inappropriate.

-- 
Eric Chanudet

