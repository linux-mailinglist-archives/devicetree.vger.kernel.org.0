Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 917E3710F71
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 17:23:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230464AbjEYPXg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 11:23:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230502AbjEYPXf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 11:23:35 -0400
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47D06A3
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 08:23:34 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-757942bd912so59756685a.2
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 08:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1685028213; x=1687620213;
        h=in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:from:to:cc:subject:date:message-id:reply-to;
        bh=Irj/1jW+7IFsFP1oPMHyVCN0QoTKWvTN0ETrOaepsek=;
        b=UoR9eEhE6oXJLRTJwUU6zI6Tiqehz1p/hif0TEnuHNeOxAED/bMo6aMbmeylh3+87q
         X2/td7QiYnDg4Hx+YlD7d0IEJNsn3T4Vlk6Ol5ocnYX6uWC5RXZzvc/HwuB87sehgHtn
         gzVl7fJA5R3qBZG4xsac4j/kLyCnD0g7h6I08=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685028213; x=1687620213;
        h=in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Irj/1jW+7IFsFP1oPMHyVCN0QoTKWvTN0ETrOaepsek=;
        b=ABpreRKses6OEvE1Jmyc09iBbKGRUBSsgqzNzBDwtey3h9pvCNPYz82rLRaQD3XOZx
         5cvdTvNpDCQircDmRlHf9d9UF3nq0jVSNUmeLmxbXQLPtJW5n8E6h/x1/T8YOJ3VHyk/
         y+EZBbTQUqUxkqGVHyD952OL+dBDz0iK1hwUbjlGrK2RyQGkTnSFhHJNsnLlfXVDLMwO
         P2Nd8c/HmMO4riDWex50x65WhUmkmxmO1VQwAS0LTW7P0IxO0rnjjJvdhlwyxajaKRMQ
         XNegUgS2+745FRsQdJXw0bqGOiD7C/VHtFyUP0k86Z2h1Cqyob9qInnpJ2oqLpdfsDyN
         7/Pw==
X-Gm-Message-State: AC+VfDzISzd/M8uB6YkjTIf6R3zKwRu4k7kzWe7YR8WzyhComU/07ZlU
        xxev3hCLH1FjkFodt7DYDs+JPw==
X-Google-Smtp-Source: ACHHUZ5Si0UP6tnnp+STDw2NFtSZmUSyJT9wJhbjFs7W1HQ0tkypF1P7LP7K5WRey4dzte1GjqwG7w==
X-Received: by 2002:a05:620a:3d88:b0:75b:23a1:8325 with SMTP id ts8-20020a05620a3d8800b0075b23a18325mr10571180qkn.32.1685028213337;
        Thu, 25 May 2023 08:23:33 -0700 (PDT)
Received: from bcacpedev-irv-3.lvn.broadcom.net ([192.19.161.250])
        by smtp.gmail.com with ESMTPSA id mg16-20020a056214561000b0061b63237be3sm466584qvb.131.2023.05.25.08.23.31
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 May 2023 08:23:32 -0700 (PDT)
Subject: Re: dt_binding_check report false alarm?
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        f.fainelli@gmail.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
References: <20230525050241.3700-1-william.zhang@broadcom.com>
 <20230525-wrench-lushness-f9a1ad022798@wendy>
From:   William Zhang <william.zhang@broadcom.com>
Message-ID: <00604ffd-ccb3-e640-5457-1fa1ed663d26@broadcom.com>
Date:   Thu, 25 May 2023 08:23:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <20230525-wrench-lushness-f9a1ad022798@wendy>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
        boundary="0000000000001cce9805fc86349e"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--0000000000001cce9805fc86349e
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Sorry for the multiple emails. Our mail relay server was not working 
properly.

Hi Conor,

On 05/25/2023 06:23 AM, Conor Dooley wrote:
> Hey William,
> 
> On Wed, May 24, 2023 at 10:02:41PM -0700, William Zhang wrote:
>> Hi,
>>
>> It seems dt_binding_check reports a false error when run on this
>> modified yaml. I picked this simple file just to demostrate this issue.
>> Basically I made the interrupts and interrupt-names as optional
>> properties. But when there are two interrupts present, then
>> interrupt-names are required.  However in the example, I don't define
>> interrupts and interrupt-name at all, the dt binding check reports error
>> that interrupt-names are required:
> 
> Rob and Krzysztof would know more than me, but since they're not
> around...
> 
>> diff --git a/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml b/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
>> index 563a31605d2b..c37a3a64a78c 100644
>> --- a/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
>> +++ b/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
>> @@ -32,11 +32,18 @@ properties:
>>     clock-names:
>>       const: ipg
>>   
>> +allOf:
>> +  - if:
>> +      properties:
>> +        interrupts:
>> +          minItems: 2
> 
> ...I don't think you can actually do this and "minItems: 2" will always
> evaluate to true because it is an assignment. Don't hold me to that
> though! The standard pattern here is to do:
> allOf:
>    - if:
>        properties:
>          compatible:
>            contains:
>              const: foo
>      then:
>        required:
>          - interrupt-names
> 
> Cheers,
> Conor.
> 
Our device can use one or two interrupt, or choose to not use interrupt 
at all(polling mode). Interrupt names is only required when there are 
two interrupts(so the driver code can tell which is which).  So I will 
need to check if it contains two interrupts. My check does work if I 
have two interrupt but don't have interrupt name, the check catches the 
error.  If I have one interrupt without interrupt name, the check pass. 
Only when I does not have interrupt and interrupt name,  it falsely 
report error.  Looks to me that it does not treat minItem = 0 case 
properly.


>> +    then:
>> +      required:
>> +        - interrupt-names
>> +
>>   required:
>>     - compatible
>>     - reg
>> -  - interrupts
>> -  - interrupt-names
>>     - clocks
>>     - clock-names
>>   
>> @@ -49,6 +56,4 @@ examples:
>>           reg = <0x53fac000 0x4000>;
>>           clocks = <&clks 111>;
>>           clock-names = "ipg";
>> -        interrupts = <49>, <50>;
>> -        interrupt-names = "scm", "smn";
>>       };
>> -- 
>> 2.34.1
>>
> 
> 

--0000000000001cce9805fc86349e
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
YDZuuBJwnyCzevMoPtVYPharioL5H3BRnQi8YoTXH7/uRo33dewYFm474yFjwwnt82TFtveVZkVq
6h4WIQ4wTcwFfET8zMkELnGzS5SHCl8sPD+lNxxJ1JDZYwIDAQABo4IB2zCCAdcwDgYDVR0PAQH/
BAQDAgWgMIGjBggrBgEFBQcBAQSBljCBkzBOBggrBgEFBQcwAoZCaHR0cDovL3NlY3VyZS5nbG9i
YWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3J0MEEGCCsGAQUF
BzABhjVodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAy
MDBNBgNVHSAERjBEMEIGCisGAQQBoDIBKAowNDAyBggrBgEFBQcCARYmaHR0cHM6Ly93d3cuZ2xv
YmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wCQYDVR0TBAIwADBJBgNVHR8EQjBAMD6gPKA6hjhodHRw
Oi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwLmNybDAlBgNV
HREEHjAcgRp3aWxsaWFtLnpoYW5nQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAf
BgNVHSMEGDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUq65GzwZxydFHjjYEU/9h
xHhPWlwwDQYJKoZIhvcNAQELBQADggEBAA2hGG3JPAdGPH0ZdohGUCIVjKz+U+EFuIDbS6A/5jqX
VhYAxZlzj7tSjUIM7G7IhyfqPC46GKJ/4x+Amz1Z6YxNGy71L68kYD6hIbBcA5AM42QBUufly6Oa
/ppSz3WoflVyFFQ5YXniZ+eU+2/cdnYZg4aVUnFjimOF5o3NfMLzOkhQNxbaDjFUfUYD8hKmU6v4
0vUBj8KZ9Gi1LIagLKUREn8jku0lcLsRbnJ5Ey5ScajC/FESPyYWasOW8j8/1EoJksmhbYGKNS6C
urb/KlmDGfVrIRYDbL0ckhGQIP5c6L+kSQZ2sHnQK0e0WgIaZYxaPYeY5u0GLCOze+3vyRMxggJt
MIICaQIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYD
VQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwxuh2XG3FXRL1W
JOEwDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEILifZSKuVYK22fr0FMoHHWE+L+HY
yfJ1iWDrQ+Nl2PW4MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIz
MDUyNTE1MjMzM1owaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsG
CWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFl
AwQCATANBgkqhkiG9w0BAQEFAASCAQA+PMcJ0OGEeyq6x/5G8M0qg/Nch8vgHBETXp4xj8vM3PL4
ic3L17M3M3pmle8R2V+z1HdEsRK2FRKnuwSptEDvcGog3CTium5V1E3Dzy2jv9Tpqn0WdiBbtSTr
FgPAaE0E69pT5RvIZABZ+kcRq0bTcyZrxu8hDXVfS4cS2bsGeGa45TrmBa7sUoqTQGLOmd12tF/A
9csWNcsgOxulluED0daL+50r5wvgpmtebPcJbZWOPcZruIYXe31oEnfMxdXsK/vIr9H7KVm9j7Nl
X474nh9RnMNjo6DJ3WoNY4DZJYlPJm9eA1qtL2+EUvElX4o1xhsw/uk6cwUjvRZ2pS7F
--0000000000001cce9805fc86349e--
