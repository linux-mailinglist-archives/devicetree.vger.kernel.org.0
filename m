Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A28783071C
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2019 05:50:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726535AbfEaDuJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 May 2019 23:50:09 -0400
Received: from mail-io1-f48.google.com ([209.85.166.48]:42382 "EHLO
        mail-io1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726531AbfEaDuJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 May 2019 23:50:09 -0400
Received: by mail-io1-f48.google.com with SMTP id g16so7011779iom.9
        for <devicetree@vger.kernel.org>; Thu, 30 May 2019 20:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=lPe0wEehaYgwdf/B2AgMl3pe7j8ejLBjnOTPMqshtI0=;
        b=aRL+sm8V3qww2z+S0KBpISm82ham68g8rb2HtCBAiBWlItrHjhl3/ZRMoZFBFqLQgh
         RBOZRK9C9Gy0SH4l2JAdJ88EwcJgFTLwNXw+S2o1BUN5fMmx1DCP1hXFSwIVWFcSo6/y
         xWu7g5HTtT2RHFmqMEpxaaMQ7h0AV5CJ3tMe01d+f1ZAet8ujOQoVhrSmDsHH6YgLGR/
         0dx5Caa6P62JyPGvTi4/bY5TTbx6j1po4wJYCF7IvOPw33QkvfGZiW2Iz+iAcpEx0cw5
         WEsC8qpWv8KHUJMjxyhx7gMIRHUIm7A3NrI1tHwnxVlKWBRQSwtY0nMs+P5tADZqQbDv
         xcVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=lPe0wEehaYgwdf/B2AgMl3pe7j8ejLBjnOTPMqshtI0=;
        b=TlF3XpddTOyPfVV0zw/13/7gz5eLjpbaSzMmzINrwhfTdSSYY2ZpUpC7PWEVtf6nfT
         Y3mKYGdGBMmhdkL2zmwr802rgy9Gfy0HwSa+6pTqqDka91dvXtXAZFKnunou/MIp0M+Z
         RSLGq5nvTgvRE3XWzrTA+IN3jh/BBpSlElBwIej5Pqj5rSyxedvsf8BVUiM78TALzomM
         d278FBlmj7gXsSIf3bhxwJkWewuhe35rO2NTHpcFXzuF8fg3VIlSubbkTJwJPi0C6VVg
         pP51oY3nVbbkgW6tKwf3pen06Et11RHw73+SC9FFP/j2myHguAFhZ6/Yh//AnAa9t87S
         xn5g==
X-Gm-Message-State: APjAAAWb8ETseEhqQoGSTfQCW8z7c47tNWWwetTC5M9iNDS0ZR7V/XKR
        avAqdRsnexGm7vehabT2KkWkDxE7CzA=
X-Google-Smtp-Source: APXvYqxRwywoN/L3/t2qldTrq8P7vvkqxH4nyZaHrgAYr5WjFIc8UPi2wWi8HRvycABuwUondn3gBQ==
X-Received: by 2002:a5d:8ad0:: with SMTP id e16mr629350iot.106.1559274608041;
        Thu, 30 May 2019 20:50:08 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net. [71.195.29.92])
        by smtp.googlemail.com with ESMTPSA id c91sm2010320itd.4.2019.05.30.20.50.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 May 2019 20:50:07 -0700 (PDT)
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     DTML <devicetree@vger.kernel.org>
From:   Alex Elder <elder@linaro.org>
Subject: Oops
Message-ID: <202177bf-f52b-e314-04d4-5665aa8961cb@linaro.org>
Date:   Thu, 30 May 2019 22:50:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

If you just received a patch from me you should ignore it.
It was intended as a test run...  I'm about to send out my
series (test looked good).

					-Alex
