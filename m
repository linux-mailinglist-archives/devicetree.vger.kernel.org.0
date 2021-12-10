Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA9674702C9
	for <lists+devicetree@lfdr.de>; Fri, 10 Dec 2021 15:27:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238533AbhLJOas (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Dec 2021 09:30:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242115AbhLJOaq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Dec 2021 09:30:46 -0500
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com [IPv6:2607:f8b0:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7790C0617A1
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 06:27:11 -0800 (PST)
Received: by mail-il1-x12a.google.com with SMTP id h16so8587085ila.4
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 06:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:content-language:to:cc:from
         :subject:content-transfer-encoding;
        bh=LAG2cyMejCgGmKmre2PExs63C1eoRssbtxVSlFqUY3g=;
        b=vnv5pqd/ZL2kGSEPA+CHar2NsK68rsUjBe0NxvFo0EHyFY91vrCGxfFtvv7Vd4UY46
         98kx7GBFVdCi+tQJSsKsapXSkDKN/+5EFVqswW6jmVoNRFXNacA2iqyJ6M/deGAw9/qX
         2P2MzMxRyxoa8ym2EIOWKqv0uxvERCcBjNBEUQ+SkjeTq0fNJA+UEH7KsHzxYe0ze/n6
         g7vT+vCkKdEldL90ZAbdqsbRL94xzip4y/HC0Y4E7KSzRb29gYQqMOlXykwwG6pR3Xo+
         fqMA6t4PMeYsqu/b3LBGxkVWuqxDvzgNx0GEsogjaASsAzDLxp+rddu67LG+jfJ9wYC0
         bXpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:cc:from:subject:content-transfer-encoding;
        bh=LAG2cyMejCgGmKmre2PExs63C1eoRssbtxVSlFqUY3g=;
        b=5T1tqHkHVKHt+an+kDqVICYb6yV0MDkTkkDwYbdf2OVcIKdSp0JnE7MKUbFXqKouad
         C8TNmT+SJrtHeeLcsqtWQ9ge3GYdZ2oakctmtFOUYxTwYOriXNo5zKBjHd++VRwwEBuA
         hYjsgw64fm6fxWHOGvgV975kKZcfObS1s++Uk0yf3FdokWucaSvmi8wRbnFeQUTgafHP
         VepXtc8wyV3zbN8mBccq+Auv2qQ/guOXade+WMcuU4F6tKDAQxSa7AapwRoAOjjIB9Ub
         aWUpsjJFh5ggP9HSyIWq7pTZTJFNxWfw34YcRk9uKWtmwN4Wa+unhPM6UCaOjemPuKsw
         e/Vw==
X-Gm-Message-State: AOAM5323FyvzEPPVBBGSwJrOGINo/RA7x6beeLHn1TC3PaV/LjUIHp7x
        Hai+klhNU8NVl5J0L38Eey8fPg==
X-Google-Smtp-Source: ABdhPJwNbMznaIDkHtvLj42UXof2YuY5nmhW86oNdIsl31sFTSZMVr37OgQfCIMLw6YKpC6HjOk97g==
X-Received: by 2002:a05:6e02:156e:: with SMTP id k14mr19503589ilu.41.1639146431180;
        Fri, 10 Dec 2021 06:27:11 -0800 (PST)
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.googlemail.com with ESMTPSA id q4sm251185ilv.56.2021.12.10.06.27.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Dec 2021 06:27:10 -0800 (PST)
Message-ID: <c7bd6c08-9f13-83f6-08d6-178215bc9f54@linaro.org>
Date:   Fri, 10 Dec 2021 08:27:09 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To:     David Heidelberg <david@ixit.cz>,
        "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
From:   Alex Elder <elder@linaro.org>
Subject: SMP2P DT binding
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bjorn, Andy, in October David Heidelberg included the following
in a message about something related to IPA in a DTS file:

 > On 10/21/26 11:34 AM, David Heidelberg wrote:
. . .
 > P.S. I have some basic structure for qcom,smp2p.yaml, but to make it
 > right take some effort. If someone want to, I can send it as WIP or
 > just into private email.

Are you interested in this?

					-Alex
