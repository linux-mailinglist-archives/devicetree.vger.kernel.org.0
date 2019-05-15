Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 92F681E5DB
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2019 02:02:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726586AbfEOABo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 20:01:44 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:45523 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726265AbfEOABo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 20:01:44 -0400
Received: by mail-pl1-f194.google.com with SMTP id a5so364803pls.12
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 17:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=pK3FjIHXVmrELjQUSW35gN3WLzKI4J7kVggFfkHpZEc=;
        b=Xl7AsYqQKlB5zy/wRKUEO0Qd2uouo1vCT1/wb/CGvV8OERDkUy28e4hZ2p3JGUYo2E
         r1JAbjjCCHJI5dJnbkzzaNinbbjlORDDkn5x5D7ziOixXN/Zli+SCjzsG9tapi3Ah1+l
         YF+ln5Kg9e1AXnXW+X6cghzxV++UnF1X6T73T1ZL9B7Y31EF2K46iTKp3BztzDfkD21h
         zgrbwR/vdrTHrND092KZTcMySPGv+Nh3Hk1NnErJj5yyqNfkzX7JhhYDphEHKyzSyxpd
         5UUrpiDSjxWILvU2uG1JHZc+G3ykLwEN0MO+yvWONg4YOMcr8dKom6QMfuXm1nb1/wf6
         0doA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=pK3FjIHXVmrELjQUSW35gN3WLzKI4J7kVggFfkHpZEc=;
        b=tW6lgejIlYtBOixkCvSFlFb5rMkY8lc8Ff0nIlWyGeWCa6YxpF8l1WzBetGNKpWkLC
         Y2buXThisVuGGleUIF1gnmbNC70ed7HCsdxmSXbAEpGfsZyq06pDeZ/M8igyqZJdkWsK
         x9dqLHAFvr0kYZmWdy8s3vCl1X0lW0JktxUKyn+usNVpKoWnjkjXfM5ojy9Zt9OvXudw
         G8Mhhn3feNGBRjQZva4eAA4/OG7WvhjlaV1nfdqri3UNEMJb77qeLIJrGzAGJGka/Tw4
         XNXzljuXa4BDrjAq31d1rzWhfJ4VcxyX7sjQzXhPhgskZRo3r4engeQ3lesOIOLzqk9i
         /M7w==
X-Gm-Message-State: APjAAAUDghKKSucct0cCNIZZYNt+/cUSFxFfvGq91U5w9xf/VO9peYde
        kLK8jG5BNZ488+enfv+SwZDEkw==
X-Google-Smtp-Source: APXvYqwA/DfK+7NSW/9CQTfxQs+5NE+m+9VhlUWRaZcnUJR3+QSMWeh19luJ6oTr81L8JvnMeyDraQ==
X-Received: by 2002:a17:902:e28a:: with SMTP id cf10mr40494068plb.77.1557878503981;
        Tue, 14 May 2019 17:01:43 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:fd66:a9bc:7c2c:636a])
        by smtp.googlemail.com with ESMTPSA id d186sm247122pgc.58.2019.05.14.17.01.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 May 2019 17:01:43 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Andrew Lunn <andrew@lunn.ch>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
Subject: Re: [PATCH] arm64: dts: amlogic: remove ethernet-phy-idAAAA.BBBB compatible strings
In-Reply-To: <20190511195150.GI4889@lunn.ch>
References: <20190511174534.2403-1-martin.blumenstingl@googlemail.com> <20190511195150.GI4889@lunn.ch>
Date:   Tue, 14 May 2019 17:01:42 -0700
Message-ID: <7hv9ycd1qx.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Andrew Lunn <andrew@lunn.ch> writes:

> On Sat, May 11, 2019 at 07:45:34PM +0200, Martin Blumenstingl wrote:
>> The Ethernet PHY documentation
>> (Documentation/devicetree/bindings/net/phy.txt) states that:
>>   If the PHY reports an incorrect ID (or none at all) then the
>>   "compatible" list may contain an entry with the correct PHY ID in the
>>   form: "ethernet-phy-idAAAA.BBBB"
>> 
>> An older version of the documentation suggested that the compatible
>> string can be used when the PHY ID is known.
>> 
>> Remove the ethernet-phy-id compatible string and add a comment with the
>> PHY ID instead.
>> This is a no-op on boards which are shipped with the PHY that was
>> listed (= all known cases). However, if a board manufacturer decides to
>> ship a different PHY we will now load and use the correct driver because
>> we ask the PHY to identify itself.
>> 
>> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>  
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Queuing for v5.3,

Thanks,

Kevin
